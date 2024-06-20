package org.example.service.mpl;

import org.example.mapper.DeleteMessageMapper;
import org.example.service.DeleteMessageServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteMessageServletlmpl implements DeleteMessageServlet {
    @Autowired
    private DeleteMessageMapper deleteMessageMapper;

    @Override
    public void delete_user(String userId) {
        deleteMessageMapper.delete_user(userId);
    }

    public void delete_association(String associationId) {
        deleteMessageMapper.delete_association(associationId);
    }

    public void delete_comment(String commentId) {
        deleteMessageMapper.delete_comment(commentId);
    }

    public void delete_purchase(String purchaseId) {
        deleteMessageMapper.delete_purchase(purchaseId);
    }

    public void delete_product(String productId) {
        deleteMessageMapper.delete_product(productId);
    }

    public void delete_news(int id) {
        deleteMessageMapper.delete_news(id);
    }
}
