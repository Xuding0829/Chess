package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.Result;
import org.example.pojo.User;
import org.example.service.SignServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
public class SignUpController {
    @Autowired
    private SignServlet signServlet;
    @PostMapping("/signup")
    public Result signUp(@RequestBody User user){
        try {
            signServlet.insert(user);
            log.info("结果：{}", user);
            return Result.success(user);
        }catch (DuplicateKeyException e) {
            log.info("失败");
            return Result.error("注册失败");
        }
    }
}
