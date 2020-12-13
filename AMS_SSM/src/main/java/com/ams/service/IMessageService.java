package com.ams.service;

import com.ams.domain.FullMessage;
import com.ams.domain.MessageCount;
import com.ams.domain.MessageReceiver;

import com.ams.domain.Message;


import java.util.List;

public interface IMessageService {

    public Message findMsgById(Integer Id)throws Exception;
    FullMessage findM_CById(Integer messageId, Integer receiverId) throws Exception;
//    Message findM_CById(MessageReceiver messageReceiver) throws Exception;
    public List<MessageReceiver> findByCheckStatus(int page, int size, Integer userId,Integer type)throws Exception;
    public List<MessageReceiver> findByType(int page, int size, Integer userId,Integer type)throws Exception;
    public List<MessageCount> findCheckCount( Integer receiverId)throws Exception;
    public List<MessageCount> findTypeCount( Integer receiverId)throws Exception;

    public List<MessageCount> findToastMsg( Integer receiverId)throws Exception;
    public List<MessageCount> findToastMsgInTime( Integer receiverId)throws Exception;

    public Boolean changeToastStatus(Integer mId) throws Exception;
    public Boolean checkStatus(FullMessage fullMessage) throws Exception;
    public Boolean deleteGet(Integer id) throws Exception;
    public Boolean deleteSend(Integer id) throws Exception;
    public Boolean update(Message message) throws Exception;
    public Boolean add(Message message) throws Exception;
    public Boolean sendMsg(MessageReceiver message) throws Exception;
}
