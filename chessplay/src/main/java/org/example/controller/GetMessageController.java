package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.*;
import org.example.service.GetMessageServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.awt.*;
import java.util.List;

@Slf4j
@RestController
public class GetMessageController {
    @Autowired
    private GetMessageServlet getMessageServlet;

    @GetMapping("/getNews")
    public Result GetNew() {
        List<News> newsList = getMessageServlet.GetNews();
        if(newsList != null) {
            log.info("getNews success");
            return Result.success(newsList);
        }
        else {
            log.info("getNews fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getItems")
    public Result GetItems() {
        List<Item> newsList = getMessageServlet.GetItems();
        if(newsList != null) {
            log.info("getItems success");
            return Result.success(newsList);
        }
        else {
            log.info("getItems fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getRooms")
    public Result GetRooms() {
        List<Room> newsList = getMessageServlet.GetRooms();
        if(newsList != null) {
            log.info("getRooms success");
            return Result.success(newsList);
        }
        else {
            log.info("getRooms fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getComments")
    public Result GetComments() {
        List<Comment> newsList = getMessageServlet.GetComments();
        if(newsList != null) {
            log.info("getComments success");
            return Result.success(newsList);
        }
        else {
            log.info("getComments fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getUsers")
    public Result GetUsers(@RequestParam String username) {
        User user = getMessageServlet.GetUserMessage(username);
        if(user != null) {
            log.info("getUsers success");
            return Result.success(user);
        }
        else {
            log.info("getUsers fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getPurchase")
    public Result GetPurchase() {
        List<purchase_item> items = getMessageServlet.GetPurchase_items();
        if(items != null) {
            log.info("getPurchases success");
            return Result.success(items);
        }
        else {
            log.info("getPurchases fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getAllUser")
    public Result GetAllUser() {
        List<User> users = getMessageServlet.GetAllUser();
        if(users != null) {
            log.info("getAllUser success");
            return Result.success(users);
        }
        else {
            log.info("getAllUser fail");
            return Result.error("错误");
        }
    }

    @GetMapping("/getAllImages")
    public Result GetAllImages() {
        List<Img> images = getMessageServlet.GetAllImages();
        if(images != null) {
            log.info("getAllImages success");
            return Result.success(images);
        }
        else{
            log.info("getAllImages fail");
            return Result.error("错误");
        }
    }
}
