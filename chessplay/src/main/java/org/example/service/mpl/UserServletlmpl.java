package org.example.service.mpl;

import org.example.mapper.UserMapper;
import org.example.pojo.User;
import org.example.service.UserServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserServletlmpl implements UserServlet {
    @Autowired
    private UserMapper userMapper;
    public User list(User user) {
        if(user.getId() == null){
            user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        }
        return userMapper.list(user);
    }
}
