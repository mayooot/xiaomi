package com.may.xiaomi.controller;

import com.may.xiaomi.entry.Consumer;
import com.may.xiaomi.entry.Goods;
import com.may.xiaomi.entry.GoodsCart;
import com.may.xiaomi.service.GoodsShoppingService;
import com.may.xiaomi.service.ShopCartService;
import com.may.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * <p>项目文档： 购物车业务操作 控制器 数据接口</p>
 *
 * @author liming
 * @version 1.0.0
 * @createTime 2021年09月01日 11:50:00
 */
@Controller
@RequestMapping("/shopCart")
public class ShopCartController {

    @Autowired
    private ShopCartService shopCartService;
    @Autowired
    private GoodsShoppingService goodsShoppingService;



    /**
     * 添加商品到购物车中
     * @param goodsId 商品id
     * @param session 会话对象
     * @return 响应数据
     */
    @GetMapping("/add/{goodsId}")
    @ResponseBody
    public ResponseMessage addGoodsToCart(@PathVariable Integer goodsId, HttpSession session) {
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        System.out.println(consumer);
        if (consumer == null) {
            return ResponseMessage.error().addObject("status", "loginSuccess");
        }

        // 加入商品到购物车
        Goods goods = goodsShoppingService.findGoodsWithId(goodsId);
        System.out.println(goodsId);
        shopCartService.addGoodsToShopCart(consumer, goods);
        return ResponseMessage.success();
    }

    /**
     * 从当前登录用户的购物车删除商品
     * @param goodsId 要删除的商品id
     * @param session 会话对象
     * @return 响应数据
     */
    @GetMapping("/remove{goodsId}")
    @ResponseBody
    public ResponseMessage removeGoodsFromCart(@PathVariable Integer goodsId ,HttpSession session) {
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if (consumer == null) {
            return ResponseMessage.error();
        }

        // 删除购物车中的商品
        Goods goods = goodsShoppingService.findGoodsWithId(goodsId);
        shopCartService.removeGoodsFromShopCart(consumer, goods);
        return ResponseMessage.success();
    }

    /**
     * 查询当前用户购物车中所有的商品
     * @param session 会话对象
     * @return 响应数据
     */
    @GetMapping("/findAll")
    @ResponseBody
    public ResponseMessage findAllWithConsumer(HttpSession session) {
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if (consumer == null) {
            return ResponseMessage.error();
        }

        // 查询该用户购物车中的所有商品
        List<GoodsCart> goodsCartList = shopCartService.findAllGoodsCartWithConsumer(consumer);
        return ResponseMessage.success().addObject("goodsCartList", goodsCartList).addObject("consumer", consumer);
    }


}
