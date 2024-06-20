package org.example.service;

import org.example.pojo.*;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GetMessageServlet {
    List<News> GetNews();
    List<Item> GetItems();
    List<Room> GetRooms();
    List<Comment> GetComments();
    User GetUserMessage(String username);
    List<purchase_item>  GetPurchase_items();
    List<User> GetAllUser();
    List<Img> GetAllImages();
}
