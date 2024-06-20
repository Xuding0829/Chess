package org.example.service;

import org.apache.logging.log4j.message.Message;
import org.example.pojo.*;

import java.util.Map;

public interface SaveMessageServlet {
    void saveComment(Comment comment);
    void joinAssociation(Map<String, Object> params);
    void purchase(purchase_item purchase_item);
    void updateUser(UpdateUser updateUser);
    void afterGame(String id);
    void addAssociation(Room_Admin room_admin);
}
