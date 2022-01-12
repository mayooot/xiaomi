package com.may.xiaomi.service;

import com.may.xiaomi.dao.GoodsMapper;
import com.may.xiaomi.dao.GoodsTypeMapper;
import com.may.xiaomi.entry.Goods;
import com.may.xiaomi.entry.GoodsExample;
import com.may.xiaomi.entry.GoodsType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author you
 * @version 1.0.0
 * @ClassName GoodsShoppingService.java
 * @Description 商品 业务处理类
 * @createTime 2021年08月27日 21:24:00
 */
@Service
public class GoodsShoppingService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Autowired
    private GoodsTypeService goodsTypeService;

    /*
        GoodsType{id=101, name='手机电话', pid=null}
        [GoodsType{id=10001, name='小米CC', pid=101}, GoodsType{id=10002, name='RedMi Note', pid=101}
        [Goods{id=1, name='小米CC9e', price=3499.0, stock=100, goodsTypeId=10001, remark='8GB+256GB'
     */

    /**
     * 根据id查询商品
     * @param id 商品编号
     * @return 返回查询到的商品
     */
    public Goods findGoodsWithId(Integer id) {
        return goodsMapper.selectByPrimaryKey(id);
    }
    /**
     * 根据二级商品类型查询商品
     * @param goodsType 二级商品类型
     * @return 属于指定商品类型的所有商品
     */
    public List<Goods> findGoodsWithType(GoodsType goodsType) {
        GoodsExample ge = new GoodsExample();
        ge.createCriteria().andGoodsTypeIdEqualTo(goodsType.getId());

        return goodsMapper.selectByExample(ge);
    }

    /**
     * 根据一级类型查询商品数据
     * @param goodsType 一级类型
     * @return 返回所有商品
     */
    public List<Goods> findGoodsWithToptype(GoodsType goodsType) {
        // 根据一级类型查询所有所属二级类型
        List<GoodsType> goodsTypes = goodsTypeService.findSecondLevel(goodsType);
        System.out.println(goodsTypes); // [GoodsType{id=10001, name='小米CC', pid=101}, GoodsType{id=10002, name='RedMi Note', pid=101}]

        // 查询所有二级类型下的所有商品
        List<Goods> goodsList = new ArrayList<>();
        for (GoodsType type : goodsTypes) {
            /*GoodsExample ge = new GoodsExample();
            ge.createCriteria().andGoodsTypeIdEqualTo(type.getId());
            List<Goods> goods = goodsMapper.selectByExample(ge);*/
            List<Goods> goods = this.findGoodsWithType(type);
            goodsList.addAll(goods);
        }

        return goodsList;

    }

    /**
     * 根据名称模糊搜索商品数据
     * @param name 商品名称
     * @return 返回符合搜索条件的商品列表
     */
    public List<Goods> searchGoodsWithName(String name) {
        // 构建条件
        GoodsExample ge = new GoodsExample();
        ge.createCriteria().andNameLike("%" + name + "%");
        return goodsMapper.selectByExample(ge);
    }
}
