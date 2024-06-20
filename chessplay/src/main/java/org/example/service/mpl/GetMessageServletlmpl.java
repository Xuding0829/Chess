package org.example.service.mpl;

import org.example.mapper.GetMessageMapper;
import org.example.pojo.*;
import org.example.service.GetMessageServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GetMessageServletlmpl implements GetMessageServlet{
    @Autowired
    private GetMessageMapper getMapping;
    @Override
    public List<News> GetNews(){
        return getMapping.GetNews();
    }
    public List<Item> GetItems() {return getMapping.GetItems();}
    public List<Room> GetRooms() {return getMapping.GetRooms();}
    public List<Comment> GetComments() {return getMapping.GetComments();}
    public User GetUserMessage(String username) {return getMapping.GetUserMessage(username);}
    public List<purchase_item> GetPurchase_items() {return getMapping.GetPurchase_items();}
    public List<User> GetAllUser() {return getMapping.GetAllUser();}
    public List<Img> GetAllImages() {return getMapping.GetAllImages();}
}
