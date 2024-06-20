package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.Result;
import org.example.service.PutNewsServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class PutNewsController {
    @Autowired
    private PutNewsServlet putNewsServlet;
    @GetMapping("/putNews")
    public Result news(){
        try{
            putNewsServlet.insertnews();
            log.info("导入完成");
            return Result.success();
        }
        catch(Exception e){
            e.printStackTrace();
            return Result.error(e.getMessage());
        }
    }
}
