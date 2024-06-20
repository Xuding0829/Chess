package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.Result;
import org.example.pojo.User;
import org.example.service.UserServlet;
import org.example.utils.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@RestController

public class UserController {
    @Autowired
    private UserServlet userServlet;

    @PostMapping("/login")

    public Result list(@RequestBody User user) {

        User users = userServlet.list(user);
        if(users != null) {
            log.info("结果：{}",user);

            Map<String, Object> claims = new HashMap<>();
            //claims.put("id", users.getId());
            claims.put("username", users.getUsername());
            claims.put("password", users.getPassword());
            claims.put("association", users.getAssociation());
            claims.put("score", users.getScore());
            claims.put("identity", users.getIdentity());
            claims.put("coin", users.getCoin());
            claims.put("id", users.getId());

            String jwt = JwtUtils.generateJwt(claims);

            return Result.success(jwt);
        } else {
            log.info("查无此人");
            return  Result.error("NOT_LOGIN");
        }
    }
}
