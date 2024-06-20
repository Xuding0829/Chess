package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.pojo.User;

import java.util.List;

@Mapper
public interface UserMapper {
    User list(User user);
}
