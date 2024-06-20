package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.logging.log4j.util.PerformanceSensitive;
import org.example.pojo.Result;
import org.example.service.DeleteMessageServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class DeleteMessageController {
    @Autowired
    private DeleteMessageServlet deleteMessageServlet;

    @GetMapping("/delete_user")
    public Result deleteUser(@RequestParam String userId) {
        deleteMessageServlet.delete_user(userId);
        return Result.success("ok");
    }

    @GetMapping("/delete_association")
    public Result deleteAssociation(@RequestParam String associationId) {
        deleteMessageServlet.delete_association(associationId);
        return Result.success("ok");
    }

    @GetMapping("/delete_comment")
    public Result deleteComment(@RequestParam String commentId) {
        deleteMessageServlet.delete_comment(commentId);
        return Result.success("ok");
    }

    @GetMapping("/delete_news")
    public Result deleteNews(@RequestParam int id) {
        deleteMessageServlet.delete_news(id);
        return Result.success("ok");
    }

    @GetMapping("/delete_purchase")
    public Result deletePurchase(@RequestParam String purchaseId) {
        deleteMessageServlet.delete_purchase(purchaseId);
        return Result.success("ok");
    }

    @GetMapping("/delete_product")
    public Result deleteProduct(@RequestParam String productId) {
        deleteMessageServlet.delete_product(productId);
        return Result.success("ok");
    }
}
