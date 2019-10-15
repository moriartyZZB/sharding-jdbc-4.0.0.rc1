package com.zzb.repository;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zzb.entity.User;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface UserRepository extends BaseMapper<User> {

    void deleteAll();
}

