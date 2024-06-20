package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.*;
import org.example.service.SaveMessageServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@Slf4j
public class SaveMessageController {
    @Autowired
    private SaveMessageServlet saveMessageServlet;


    @PostMapping("/postComments")
    public Result postComments(@RequestBody Comment comments) {
        try {

            saveMessageServlet.saveComment(comments);
            log.info("comment saved");
            return Result.success("ok");
        }
        catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());
            return Result.error("error");
        }
    }

    @PostMapping("/joinAssociation")
    public Result joinAssociation(@RequestBody JoinAssociationRequest request) {
        try {
            Map<String, Object> params = new HashMap<>();
            params.put("association", request.getAssociation());
            params.put("username", request.getUsername());
            saveMessageServlet.joinAssociation(params);
            System.out.println(request.getAssociation() + request.getUsername());
            log.info("association saved");
            return Result.success("ok");
        }
        catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());
            return Result.error("error");
        }
    }

    @PostMapping("/purchase")
    public Result purchase(@RequestBody purchase_item purchase_item) {
        try {
            System.out.println(purchase_item.getUser_id());
            saveMessageServlet.purchase(purchase_item);
            log.info("purchase_saved");
            return Result.success("ok");
        }
        catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());
            return Result.error("error");
        }
    }

    @PostMapping("/updateUser")
    public Result updateUser(@RequestBody UpdateUser updateUser) {
        try{
            saveMessageServlet.updateUser(updateUser);
            log.info("user saved");
            return Result.success("ok");
        }
        catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());
            return Result.error("error");
        }
    }

    @PostMapping("/afterGame")
    public Result afterGame(@RequestParam String id) {
        try{
            saveMessageServlet.afterGame(id);
            log.info("after_game_saved");
            return Result.success("ok");
        }
        catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());
            return Result.error("error");
        }
    }

    @PostMapping("/addAssociation")
    public Result addAssociation(@RequestBody Room_Admin room_admin) {
        try{
            saveMessageServlet.addAssociation(room_admin);
            log.info("association_saved");
            return Result.success("ok");
        }
        catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());
            return Result.error("error");
        }
    }
}
