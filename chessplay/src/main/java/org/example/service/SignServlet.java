package org.example.service;

import org.example.pojo.User;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.sql.SQLIntegrityConstraintViolationException;

@Service
public interface SignServlet {
    boolean insert(User user) throws DuplicateKeyException;
}
