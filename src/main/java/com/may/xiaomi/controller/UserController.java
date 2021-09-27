package com.may.xiaomi.controller;

import com.may.xiaomi.entry.User;
import org.springframework.web.bind.annotation.*;

/**
 * <p>项目文档： TODO</p>
 *
 * @author liming
 * @version 1.0.0
 * @createTime 2021年09月11日 23:29:00
 */

/**
 * RestController 是 ResponseBody 和 Controller1的组合
 * ResponseBody的作用：
 *      1. 将 Java 对象转为 json 格式的数据
 *      2. 将 controller 的方法返回的对象通过适当的转换器转换为指定的格式后，写入到 response 对象的 body 区，
 *          通常用来返回 JSON数据 或者 XML数据
 *          注意：在使用此注解之后不会再走视图处理器，而是直接将数据写入到输入流中，它的效果等同于通过response对象输出指定格式的数据
 *      3. @ResponseBody 是作用在方法上的， @ResponseBody 表示该方法的返回结果直接写入 HTTP response body 中，一般在异步获取数据时使用【也就是AJAX】
 *          注意：在使用 @RequestMapping 后，返回值通常解析为跳转路径，但是使用 @ResponseBody 后返回结果不会解析为跳转路径，而是直接写入HTTP response body中。
 *                  比如异步获取 json 数据，加上 @ResponseBody 后，会直接返回 json 数据。 @RequestBody 将 HTTP 请求正文插入方法中，使用适合的 HttpMessageConverter 将请求体写入某个对象。
 */
@RestController
public class UserController {

    @RequestMapping(value = "/regist123", method = RequestMethod.GET)
    public String regist(String mail,
                         String password) {
        System.out.println(mail + "\n" + password);
        return "regist success!";

    }

    @RequestMapping(value="/login123",method = RequestMethod.GET)
    public String login(String name,String password){
        System.out.println("name："+name+",password:"+password);
        if("xiaoming".equals(name)&&"123456".equals(password)){
            return "success";
        }
        return "error";
    }
}
