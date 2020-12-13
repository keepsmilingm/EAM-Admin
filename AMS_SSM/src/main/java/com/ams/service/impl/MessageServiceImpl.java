package com.ams.service.impl;

import com.ams.dao.IMessageDao;
import com.ams.dao.IUserDao;
import com.ams.domain.*;
import com.ams.service.IMessageService;
import com.ams.service.IUserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("messageService")
@Transactional
public class MessageServiceImpl implements IMessageService {


    @Autowired
    private IMessageDao messageDao;



    @Override
    public Message findMsgById(Integer Id) throws Exception {
        return messageDao.findMsgById(Id);
    }

    @Override
    public FullMessage findM_CById(Integer messageId, Integer receiverId) throws Exception {
//        MessageReceiver messageReceiver=new MessageReceiver();
//        messageReceiver.setReceiverId(receiverId);
//        messageReceiver.setMessageId(messageId);
        return messageDao.findM_CById(messageId,receiverId);
    }

    @Override
    public List<MessageReceiver> findByCheckStatus(int page, int size,Integer userId, Integer type) throws Exception {
        System.out.println(messageDao.findByCheckStatus(userId, type));
        PageHelper.startPage(page, size);
        return messageDao.findByCheckStatus(userId,type);
    }
    @Override
    public List<MessageReceiver> findByType(int page, int size,Integer userId, Integer type) throws Exception {
        System.out.println(messageDao.findByType(userId, type));
        PageHelper.startPage(page, size);
        return messageDao.findByType(userId,type);
    }

    @Override
    public List<MessageCount> findCheckCount(Integer receiverId) throws Exception {
        return messageDao.findCheckCount(receiverId);
    }

    @Override
    public List<MessageCount> findTypeCount(Integer receiverId) throws Exception {
        return messageDao.findTypeCount(receiverId);
    }

    @Override
    public List<MessageCount> findToastMsg(Integer receiverId) throws Exception {
        return messageDao.findToastMsg(receiverId);
    }

    @Override
    public List<MessageCount> findToastMsgInTime(Integer receiverId) throws Exception {
        return messageDao.findToastMsgInTime(receiverId);
    }

    @Override
    public Boolean changeToastStatus(Integer mId) throws Exception {
        return messageDao.changeToastStatus(mId);
    }

    @Override
    public Boolean checkStatus(FullMessage fullMessage) throws Exception {
        return messageDao.checkStatus(fullMessage);
    }

    @Override
    public Boolean deleteGet(Integer id) throws Exception {
        return messageDao.deleteGet(id);
    }

    @Override
    public Boolean deleteSend(Integer id) throws Exception {
        return messageDao.deleteGet(id);
    }


    @Override
    public Boolean update(Message message) throws Exception {
        return messageDao.update(message);
    }

    @Override
    public Boolean add(Message message) throws Exception {
        return messageDao.add(message);
    }

    @Override
    public Boolean sendMsg(MessageReceiver message) throws Exception {
        return messageDao.sendMsg(message);
    }



}
