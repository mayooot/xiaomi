package com.may.xiaomi.controller;

import com.may.xiaomi.entry.Consumer;
import com.may.xiaomi.service.ConsumerService;
import com.may.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/consumer")
public class ConsumerController {

    @Autowired
    private ConsumerService consumerService;

    @PostMapping(value = "/login/auth", produces = {"application/json;charset=UTF-8"})
    @ResponseBody // 序列化 --> 类型转换 --> jackson --> json
    public ResponseMessage login(@RequestParam String username,
                                 @RequestParam String password,
                                 HttpSession session) {
        /*
            重构：登录业务
                1. 验证账号 + 密码
                2. 登记用户 -- 会话跟踪[session]
         */
        System.out.println("接收到请求：/consumer/login/auth");
        System.out.println("账号: " + username + "; 密码: " + password);
        Consumer consumer = new Consumer(username, password);
        consumer = consumerService.findConsumerWithUsernameAndPassword(consumer);
        System.out.println("登录结果: " + consumer);

        // 记录登录用户
        session.setAttribute("loginConsumer", consumer);
        return consumer != null ? ResponseMessage.success() : ResponseMessage.error();

    }

    @PostMapping("/register")
    @ResponseBody
    public ResponseMessage register(@RequestParam String username,
                                    @RequestParam String password) {
        // 创建用户对象
        Consumer consumer = new Consumer(username, password);
        // 注册用户
        String result = consumerService.register(consumer);

        // 判断结果
        if (result.contains("注册成功")) {
            return ResponseMessage.success();
        }
        return ResponseMessage.error().addObject("msg", result);
    }

    @GetMapping("/exit")
    public String exit(HttpServletRequest response, HttpSession session) {
        session.removeAttribute("loginConsumer");
        return "redirect:/index.jsp";
    }


}
