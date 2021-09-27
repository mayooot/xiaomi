package com.may.test;

import com.may.xiaomi.dao.ConsumerMapper;
import com.may.xiaomi.dao.GoodsCartMapper;
import com.may.xiaomi.entry.*;
import com.may.xiaomi.service.GoodsShoppingService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

/**
 * 单元测试
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class DaoTest {

    @Autowired
    private ConsumerMapper consumerMapper;
    @Autowired
    private GoodsCartMapper goodsCartMapper;

    @Test
    public void testGoodsCartMapper() {
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(4)
                .andGoodsIdEqualTo(6);

        List<GoodsCart> cartList = goodsCartMapper.selectByExample(gce);
        System.out.println(cartList);

        if (cartList.size() > 0) {
            // 更新购买数量
            int count = cartList.get(0).getBuyCount();
            cartList.get(0).setBuyCount(count + 1);
            // 更新金额
            double price = cartList.get(0).getSubtotal() / count * cartList.get(0).getBuyCount();
            cartList.get(0).setSubtotal(price);
            goodsCartMapper.updateByExampleSelective(cartList.get(0), gce);
            System.out.println(cartList);

    /*    GoodsCart goodsCart = new GoodsCart(6, 1, new Date(), 200.00, 4);
        goodsCartMapper.insertSelective(goodsCart);*/

        }
    }

    @Test
    public void testConsumerInsert() {
        // 创建consumer对象
        Consumer consumer = new Consumer("CORN", "123");
        // 将consumer对象添加在数据库中
        consumerMapper.insertSelective(consumer);

        System.out.println("数据insert执行完成!");
    }

    @Test
    public void testConsumerSelectById() {
        Consumer consumer = consumerMapper.selectByPrimaryKey(1);
        System.out.println(consumer);
    }

    @Test
    public void testConsumerSelectByExample() {
        // 创建一个查询条件 【账号 + 密码】
        ConsumerExample consumerExample = new ConsumerExample();
        consumerExample.createCriteria().andUsernameEqualTo("CORN").andPasswordEqualTo("123");

        // 查询数据
        List<Consumer> consumers = consumerMapper.selectByExample(consumerExample);

        consumers.forEach(consumer -> System.out.println(consumer));

    }

    @Autowired
    private GoodsShoppingService goodsShoppingService;

    @Test
    public void testSearchGoods() {
        List<Goods> goodsList = goodsShoppingService.searchGoodsWithName("小米");
        System.out.println(goodsList);
        for (Goods goods : goodsList) {
            System.out.println(goods);
        }

    }




}
