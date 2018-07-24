package com.nsfocus.api;


import com.nsfocus.bean.Jenkins;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserApi {
    public boolean isLogin(String username,String password,HttpSession session);
    public List<Jenkins> createJenkinsAndQuery(Jenkins jenkins);
}
