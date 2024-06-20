package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.pojo.News;

import java.util.Set;

@Mapper
public interface PutNewsMapper {
    void insertNews(@Param("set") Set<News> news);
}
