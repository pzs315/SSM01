package com.swjd.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// 自定义拦截器
public class LoginInterceptor implements HandlerInterceptor {
    // 用来做拦截的方法
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestURI=request.getRequestURI();//获取请求地址
        // 如果是登录页面或者首页就放行
        if (requestURI.indexOf("login")>=0||requestURI.indexOf("Login")>=0||requestURI.indexOf("main")>=0||requestURI.indexOf("Main")>=0) {
            return true;
        }
        // 如果用户登录过
        HttpSession session=request.getSession();//获取session
        if (session.getAttribute("name")!=null) {
            return true;
        }
        // 其他不放行，并进入登录页面
        request.getRequestDispatcher("/toLogin").forward(request,response);
        return false;
    }
}
