package com.ams.dao;

import com.ams.domain.MessageCount;
import com.ams.domain.FullMessage;
import com.ams.domain.Message;
import com.ams.domain.MessageReceiver;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IMessageDao {

    @Select(" SELECT * FROM message m  ,message_receiver r where m.id=r.messageId  and r.messageId=#{messageId}  and r.receiverId=#{receiverId}")
    public FullMessage findM_CById(@Param("messageId") Integer messageId, @Param("receiverId") Integer receiverId) throws Exception;

    @Select("select * from message where id=#{messageId}")
    public Message findMsgById(Integer messageId) throws Exception;

//
    @Select("select * from message where id=#{messageId}")
    public List<Message> findPersonalMsg(Integer departmentId,Integer userId) throws Exception;

    @Update("update message set des=#{des } ,detail=#{detail } ,senderId=#{senderId } ,sender=#{sender}, type=#{type},sendTime=#{sendTime},pic=#{pic} where id=#{id}")
    public Boolean update(Message message) throws Exception;

    @Update("update message_receiver set checkStatus=#{checkStatus } where mId=#{mId}")
    public Boolean checkStatus(FullMessage fullMessage) throws Exception;


    @Insert("insert into message( des ,detail ,senderId ,sender ,type,sendTime,pic )values(#{des },#{detail },#{senderId },#{sender},#{type},#{sendTime},#{pic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean add(Message message) throws Exception;

//    删除收到的消息
    @Delete("delete from message_receiver where messageId=#{id}")
    Boolean deleteGet(Integer id) throws Exception;

//    删除发送的消息
    @Delete("delete from messag where id=#{id}")
    Boolean deleteSend(Integer id) throws Exception;

    @Select("SELECT * FROM message WHERE CONCAT(IFNULL(desc,''),IFNULL(detail,''),IFNULL(sender,'')) LIKE '%${value}%'")
    public List<Message> fuzzyQuery(String condition) throws Exception;

    @Insert("insert into message_receiver( messageId ,receiverId ,receiveDepId ,checkstatus ,checktime )values(#{messageId },#{receiverId},#{receiveDepId },#{checkStatus},#{checkTime})")
    Boolean sendMsg(MessageReceiver messageReceiver)throws Exception;


    //根据用户Id或用户所在部门id查到所接收的MSG
//    @Select("SELECT distinct m.des,m.type,m.detail,m.id,m.sender,m.senderId,m.sendTime,m.typeStr,r.checkStatus FROM `message` m,message_receiver r where r.receiverId=#{userId} and r.checkstatus=#{checkstatus} and m.id=r.messageId")
    @Select("select * from  message_receiver r,message m where  m.id=r.messageId and r.receiverId=#{userId} and r.checkstatus=#{checkstatus} ")
    @Results({
            @Result(id = true, property = "mId", column = "mId"),
            @Result(property = "messageId", column = "messageId"),
            @Result(property = "receiverId", column = "receiverId"),
            @Result(property = "checkStatus", column = "checkStatus"),
//            @Result(property = "checkStatusStr", column = "checkStatusStr"),
            @Result(property = "checkTime", column = "checkTime"),
            @Result(property = "message", column = "messageId", javaType = Message.class, one = @One(select = "com.ams.dao.IMessageDao.findMsgById"))

    })
    public List<MessageReceiver> findByCheckStatus(@Param("userId") Integer userId,@Param("checkstatus")Integer checkstatus) throws Exception;

//    @Select("select m.des,m.type,m.detail,m.id,m.sender,m.senderId,m.sendTime,m.typeStr from message_receiver r,message m where r.checkstatus=0 and m.id=r.messageId and r.receiverId=#{userId} and type=#{type}")
    @Select("select * from  message_receiver r,message m where  r.checkstatus=0 and m.id=r.messageId and r.receiverId=#{userId} and type=#{type}")
    @Results({
            @Result(id = true, property = "mId", column = "mId"),
            @Result(property = "messageId", column = "messageId"),
            @Result(property = "receiverId", column = "receiverId"),
            @Result(property = "checkStatus", column = "checkStatus"),
//            @Result(property = "checkStatusStr", column = "checkStatusStr"),
            @Result(property = "checkTime", column = "checkTime"),
            @Result(property = "message", column = "messageId", javaType = Message.class, one = @One(select = "com.ams.dao.IMessageDao.findMsgById"))

    })
    public List<MessageReceiver> findByType(@Param("userId") Integer userId,@Param("type")Integer type) throws Exception;
    @Select("select * from message_receiver where messageId=#{id}")
    public List<Message> findMsgRec(Integer id) throws Exception;


//    查找消息数量

//--  查询出message_receiver表中属于特定用户的未读消息的不同type的消息数量 checkstatus=0（所需参数receiverId）
    @Select("select count(*) typeNum,type from message_receiver r,message m where r.checkstatus=0 and m.id=r.messageId and r.receiverId=#{receiverId} group by type")
    List<MessageCount> findTypeCount(@Param("receiverId")Integer receiverId) throws Exception;
// --  查询出message_receiver表中属于特定用户的未读消息的不同checkstatus的消息数量 （所需参数receiverId）
    @Select("select count(*) checkStatusNum ,checkstatus from message_receiver   where  receiverId=#{receiverId} group by checkstatus")
    List<MessageCount> findCheckCount(@Param("receiverId")Integer receiverId) throws Exception;
//  --  查询出紧急消息及发送者信息（所需参数receiverId）
    @Select("select m.des ,m.sender,u.pic ,r.messageId,r.receiverId from message_receiver r,message m ,users u  where  m.id=r.messageId and m.senderId=u.id and receiverId=#{receiverId} and m.type=1 and r.checkStatus=0")
    List<MessageCount> findToastMsg(@Param("receiverId")Integer receiverId) throws Exception;
//    获取所有未读信息，用于及时提醒
    @Select("select r.mId, m.des ,m.sender,u.pic ,r.messageId,r.receiverId from message_receiver r,message m ,users u  where  m.id=r.messageId and m.senderId=u.id and receiverId=#{receiverId} and r.checkStatus=0 and r.isToast=0")
    List<MessageCount> findToastMsgInTime(@Param("receiverId")Integer receiverId) throws Exception;

    @Update("update message_receiver set isToast=1 where mId=#{mId}")
    Boolean changeToastStatus(@Param("mId")Integer mId) throws Exception;
}
