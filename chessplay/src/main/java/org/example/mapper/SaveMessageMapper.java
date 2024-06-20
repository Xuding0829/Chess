package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.*;

import java.util.Map;

@Mapper
public interface SaveMessageMapper {
    void saveComments(Comment comment);
    void joinAssociation(Map<String, Object> params);
    void purchase(purchase_item purchase_item);
    void updateUser(UpdateUser updateUser);
    void afterGame(String id);
    void addAssociation(Room_Admin room_admin);
}
