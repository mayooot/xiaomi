package com.may.xiaomi.controller;

import com.may.xiaomi.entry.Consumer;
import com.may.xiaomi.entry.Goods;
import com.may.xiaomi.entry.GoodsCart;
import com.may.xiaomi.entry.GoodsType;
import com.may.xiaomi.service.GoodsShoppingService;
import com.may.xiaomi.service.GoodsTypeService;
import com.may.xiaomi.service.ShopCartService;
import com.may.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author you
 * @version 1.0.0
 * @ClassName indexController.java
 * @Description 首页相关处理接口
 * @createTime 2021年08月27日 21:33:00
 */
@Controller
public class indexController {
    @Autowired
    private ShopCartService shopCartService;
    @Autowired
    private GoodsTypeService goodsTypeService;
    @Autowired
    private GoodsShoppingService goodsShoppingService;

    @GetMapping("/initIndex")
    @ResponseBody
    public ResponseMessage initIndex(HttpSession session) {
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        // 获取用户购物车中商品的数量
        int shopCartSize;
        if (consumer == null) {
            // 用户未登录
            shopCartSize = 0;
        } else {
            shopCartSize = shopCartService.findAllGoodsCartWithConsumer(consumer).size();
        }

        // 查询一级商品类型数据
        List<GoodsType> topLevel = goodsTypeService.findTopLevel();

        Map<Integer, List<Goods>> goodsMap = new HashMap<>();
        // 遍历查询每个一级类型下的二级类型，按照二级类型：商品类型
        for (GoodsType goodsType: topLevel) {
            // 查询所属一级类型下的所有二级类型
            List<GoodsType> secondLevel = goodsTypeService.findSecondLevel(goodsType);
            // 查询所有二级类型下的所有商品
            for (GoodsType secondGoodsType : secondLevel) {
                // 查询商品
                List<Goods> goodsList = goodsShoppingService.findGoodsWithType(secondGoodsType);
                // 存储数据
                goodsMap.put(secondGoodsType.getId(), goodsList);
            }
        }

        // 返回首页需要的数据
        return ResponseMessage.success()
                .addObject("consumer", consumer)
                .addObject("shopCartSize", shopCartSize)
                .addObject("goodsTypeList", topLevel)
                .addObject("goodsMap", goodsMap);
    }



}
