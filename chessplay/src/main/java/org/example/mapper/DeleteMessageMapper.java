package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeleteMessageMapper {
    void delete_user(String userId);
    void delete_association(String associationId);
    void delete_comment(String commentId);
    void delete_purchase(String purchaseId);
    void delete_product(String productId);
    void delete_news(int id);
}
