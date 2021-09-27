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


/**
 * @author you
 * @version 1.0.0
 * @ClassName GoodsController.java
 * @Description TODO
 * @createTime 2021年08月30日 14:05:00
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsShoppingService goodsShoppingService;
    @Autowired
    private GoodsTypeService goodsTypeService;

    @GetMapping("/detail/{gid}")
    @ResponseBody
    public ResponseMessage findGoodsWithId(@PathVariable Integer gid) {
        Goods goods = goodsShoppingService.findGoodsWithId(gid);
        GoodsType goodsType = goodsTypeService.findById(goods.getGoodsTypeId());

        return goods != null ? ResponseMessage.success().addObject("goods", goods).addObject("goodsType", goodsType)
                             : ResponseMessage.error();

    }
}
