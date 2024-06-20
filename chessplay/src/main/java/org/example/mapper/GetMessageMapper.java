package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.*;

import java.util.List;

@Mapper
public interface GetMessageMapper {
    List<News> GetNews();
    List<Item> GetItems();
    List<Room> GetRooms();
    List<Comment> GetComments();
    User GetUserMessage(String username);
    List<purchase_item> GetPurchase_items();
    List<User> GetAllUser();
    List<Img> GetAllImages();
}
