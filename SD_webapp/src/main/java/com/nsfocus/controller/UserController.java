package com.nsfocus.controller;

import com.nsfocus.api.UserApi;
import com.nsfocus.bean.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserApi userApi;

    @RequestMapping("isLogin.do")
    public void isLogin(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception
    {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        boolean bool=userApi.isLogin(username,password,session);
        if(bool==true)
        {
            request.getRequestDispatcher(request.getContextPath()+"main/Manager.jsp").forward(request,response);
        }
        else
        {
            response.sendRedirect(request.getContextPath()+"user/manager.jsp");
        }
    }
    //------------------------------------------------------------------------------
    /*
    * 实现用户新建Jenkins项目的功能
    * */
    @RequestMapping("jenkins.do")
    public ModelAndView addJenkinsProject(HttpServletRequest request, HttpServletResponse response)
    {
        String clonestyle=request.getParameter("clonestyle");
        String resp="http://^^^^^^^^.svn";
        String dynscan=request.getParameter("dynscan");
        String stascan=request.getParameter("stascan");
        Integer stascanid=Integer.valueOf(stascan);
        String relysecurity=request.getParameter("relysecurity");
        Integer relysecurityid=Integer.valueOf(relysecurity);
        String rsas=request.getParameter("rsas");
        Integer rsasid=Integer.valueOf(rsas);
        Jenkins jenkins=new Jenkins();
        jenkins.setCloneStyle(clonestyle);
        jenkins.setResp(resp);
        jenkins.setDyScan(dynscan);
        StaScan staScan=new StaScan();
        staScan.setId(stascanid);
        jenkins.setStaScan(staScan);
        RelySecurity relySecurity=new RelySecurity();
        relySecurity.setId(relysecurityid);
        jenkins.setRelySecurity(relySecurity);
        Rsas rsas1=new Rsas();
        rsas1.setId(rsasid);
        jenkins.setRsas(rsas1);
        List<Jenkins> jenkinsList=userApi.createJenkinsAndQuery(jenkins);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("/detail/admin_fifth.jsp");
        modelAndView.addObject("jenkinsList",jenkinsList);
        return modelAndView;
    }
}
