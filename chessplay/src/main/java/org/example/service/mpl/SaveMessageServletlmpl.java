package org.example.service.mpl;

import org.apache.ibatis.session.SqlSession;
import org.example.mapper.SaveMessageMapper;
import org.example.pojo.*;
import org.example.service.SaveMessageServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Service
public class SaveMessageServletlmpl implements SaveMessageServlet {
    @Autowired
    private SaveMessageMapper saveMessageMapper;
    private SqlSession sqlSession;

    @Override
    public void saveComment(Comment comment) {
        if(comment.getId() == null) {
            comment.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        }
        saveMessageMapper.saveComments(comment);
    }

    public void joinAssociation(Map<String, Object> params) {
        saveMessageMapper.joinAssociation(params);
    }

    public void purchase(purchase_item purchase_item){
        if(purchase_item.getId() == null) {
            purchase_item.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        }
        saveMessageMapper.purchase(purchase_item);
    }

    public void updateUser(UpdateUser updateUser) {
        saveMessageMapper.updateUser(updateUser);
    }

    public void afterGame(String id) {
        saveMessageMapper.afterGame(id);
    }

    public void addAssociation(Room_Admin room_admin) {
        saveMessageMapper.addAssociation(room_admin);
    }
}
