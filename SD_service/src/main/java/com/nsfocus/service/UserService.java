package com.nsfocus.service;


import com.nsfocus.api.UserApi;
import com.nsfocus.bean.User;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements UserApi {
   @Autowired
   private UserMapper userMapper;

   public boolean isLogin(String username,String password)
   {
      List<User> users=userMapper.queryUser();
      for(User user:users)
      {
         if(user.getUsername().equals(username)&&user.getPassword().equals(password))
         {
            return true;
         }
      }
      return false;
   }
}


