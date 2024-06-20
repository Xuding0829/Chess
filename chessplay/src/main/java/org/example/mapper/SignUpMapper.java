package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.User;
import org.springframework.dao.DuplicateKeyException;

import java.sql.SQLIntegrityConstraintViolationException;

@Mapper
public interface SignUpMapper {
    int insert(User user) throws DuplicateKeyException;
}
