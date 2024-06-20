package org.example.service.mpl;

import org.example.mapper.SignUpMapper;
import org.example.pojo.User;
import org.example.service.SignServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.sql.SQLIntegrityConstraintViolationException;

@Service
public class SignServletlmpl implements SignServlet {

    @Autowired
    public SignUpMapper signUpMapper;
    @Override
    public boolean insert(User user) throws DuplicateKeyException {
        int data =  signUpMapper.insert(user);
        return data > 0;
    }
}
