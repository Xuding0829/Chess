package org.example.service;

import org.springframework.stereotype.Service;

@Service
public interface DeleteMessageServlet {
    void delete_user(String userId);
    void delete_association(String associationId);
    void delete_comment(String commentId);
    void delete_purchase(String purchaseId);
    void delete_product(String productId);
    void delete_news(int id);
}
