package com.zzb.web;


import com.zzb.entity.User;
import com.zzb.repository.UserRepository;
import com.zzb.service.UserService;
import com.zzb.util.IDKeyUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
public class UserController {

    Logger logger= LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/getUsers")
    public Object getUsers() {
        List<User> list= userService.getUsers();
        Collections.sort(list);
        return list;
    }
    @GetMapping("/getUser")
    public Object getUser(@RequestParam Long id) {
        User user= userService.getUser(id);
        return user;
    }
    @GetMapping("/addUsers")
    public Object add() {
        for(int i=1;i<=100;i++) {
            User user = new User();
            user.setUsername("sharding-"+(i));
            user.setPassword("pw"+i);
           long resutl=   userService.addUser(user);
           logger.info("insert:"+user.toString()+" result:"+resutl);
        }
        return "添加成功";
    }

    @GetMapping("/deleteOne")
    public Object deleteOne(@RequestParam Long id) {
        userService.deleteOne(id);
        return "删除成功！";
    }

    @GetMapping("/updateUser")
    public Object updateUser(@RequestParam Long id,@RequestParam String username) {
        User user = new User();
        user.setId(id);
        user.setUsername(username);
        userService.updateUser(user);
        return "更新成功！";
    }


    @GetMapping("/deleteAll")
    public Object deleteAll() {
        userRepository.deleteAll();
        return "删除成功！";
    }
}
