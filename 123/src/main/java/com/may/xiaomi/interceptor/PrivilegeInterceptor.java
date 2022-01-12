package com.may.xiaomi.interceptor;

import com.sun.net.httpserver.HttpsServer;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.may.xiaomi.entry.Consumer;

import java.io.IOException;

/**
 * <p>项目文档： 拦截器</p>
 *
 * @author liming
 * @version 1.0.0
 * @createTime 2021年09月03日 22:54:00
 */
public class PrivilegeInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 逻辑：判断用户是否登录，本质：判断session中有没有consumer
        System.out.println("test interceptor...");
        HttpSession session = request.getSession();
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if (consumer == null) {
            System.out.println("没有登录，请登录");

            //获取当前请求的路径
            //logger.error("请求类型:"+request.getHeader("X-Requested-With"));
            response.setHeader("Access-Control-Expose-Headers", "REDIRECT,CONTEXTPATH");
            //告诉ajax我是重定向
            response.setHeader("REDIRECT", "REDIRECT");
            //告诉ajax我重定向的路径
            String url = request.getContextPath() + "/login.jsp";//重定向路径
            response.setHeader("CONTEXTPATH", url);
            response.getWriter().write(1);
            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
            return false;
        }

        // 放行 访问目标资源
        System.out.println("登录成功，可以访问");

        return true;
    }

}
