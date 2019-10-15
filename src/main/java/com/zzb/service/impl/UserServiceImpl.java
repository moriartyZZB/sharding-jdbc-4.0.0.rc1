package com.zzb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zzb.entity.User;
import com.zzb.repository.UserRepository;
import com.zzb.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl  implements UserService {

    @Resource
    UserRepository userRepository;

    @Override
    public Integer addUser(User user) {
        return userRepository.insert(user);
    }

    @Override
    public List<User> getUsers() {
        return userRepository.selectList(new QueryWrapper<>());
    }

    @Override
    public User getUser(Long id) {
        return null;
    }

    @Override
    public boolean deleteOne(Long id) {
        int i = userRepository.deleteById(id);
        return i>0;
    }

    @Override
    public boolean updateUser(User user) {
        return userRepository.updateById(user)>0;
    }


}
