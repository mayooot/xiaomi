package com.may.xiaomi.controller;

import com.may.xiaomi.entry.Goods;
import com.may.xiaomi.entry.GoodsType;
import com.may.xiaomi.service.GoodsShoppingService;
import com.may.xiaomi.service.GoodsTypeService;
import com.may.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author you
 * @version 1.0.0
 * @ClassName UtilsController.java
 * @Description 辅助工具控制类
 * @createTime 2021年08月29日 15:59:00
 */
@Controller
@RequestMapping("/u")
public class UtilsController {

    @Autowired
    private GoodsShoppingService goodsShoppingService;
    @Autowired
    private GoodsTypeService goodsTypeService;

    @GetMapping("/search/{name}")
    @ResponseBody
    public ResponseMessage searchGoodsWithName(@PathVariable String name) {
        List<Goods> goodsList = goodsShoppingService.searchGoodsWithName(name);

        return goodsList.size() > 0 ? ResponseMessage.success().addObject("goodsList", goodsList)
                                    : ResponseMessage.error();
    }

    /**
     * 根据类型查看商品
     * @param level 类型级别 1 一级类型     2 二级类型
     * @param goodsTypeId 类型编号
     * @return 返回响应数据
     */
    @GetMapping("/search/{level}/{goodsTypeId}")
    @ResponseBody
    public ResponseMessage searchGoodsWithType(@PathVariable String level,
                                               @PathVariable String goodsTypeId) {
        System.out.println(level + " " + goodsTypeId);
        // 根据编号查询类型
        GoodsType goodsType = goodsTypeService.findById(Integer.parseInt(goodsTypeId));
        System.out.println(goodsType);
        // 判断类型级别
        List<Goods> goodsList = null;
        if ("1".equals(level)) {
            System.out.println("1...");
            goodsList = goodsShoppingService.findGoodsWithToptype(goodsType);
        } else if ("2".equals(level)){
            System.out.println("2...");
            goodsList = goodsShoppingService.findGoodsWithType(goodsType);
        }

/*        GoodsType byId1 = goodsTypeService.findById(101);
        System.out.println("test 101：" + byId1);
        GoodsType byId2 = goodsTypeService.findById(10001);
        System.out.println("test 10001：" + byId2);
        GoodsType byId3 = goodsTypeService.findById(1);
        System.out.println("test 1：" + byId3);*/

        return goodsList != null && goodsList.size() > 0 ? ResponseMessage.success().addObject("goodsList", goodsList).addObject("goodsTypeName",goodsType.getName())
                                                         : ResponseMessage.error();
    }
}
