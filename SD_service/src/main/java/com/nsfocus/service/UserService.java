package com.nsfocus.service;


import com.nsfocus.api.UserApi;
import com.nsfocus.bean.Jenkins;
import com.nsfocus.bean.User;
import mapper.JenkinsMapper;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserService implements UserApi {
   @Autowired
   private UserMapper userMapper;
   @Autowired
   private JenkinsMapper jenkinsMapper;
   public boolean isLogin(String username, String password, HttpSession session)
   {
      List<User> users=userMapper.queryUser();
      for(User user:users)
      {
         if(user.getUsername().equals(username)&&user.getPassword().equals(password))
         {
            session.setAttribute("user",user);
            return true;
         }
      }
      return false;
   }

   public List<Jenkins> createJenkinsAndQuery(Jenkins jenkins)
   {
      jenkinsMapper.addJenkins(jenkins);
      return jenkinsMapper.queryJenkinsAll();
   }
}


