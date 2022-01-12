package com.may.xiaomi.service;

import com.may.xiaomi.dao.GoodsTypeMapper;
import com.may.xiaomi.entry.GoodsType;
import com.may.xiaomi.entry.GoodsTypeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

/**
 * @author you
 * @version 1.0.0
 * @ClassName GoodsTypeService.java
 * @Description 商品类型 业务处理类
 * @createTime 2021年08月27日 21:00:00
 */
@Service
public class GoodsTypeService {
    @Autowired
    private GoodsTypeMapper goodsTypeMapper;



    /**
     * 查询一级商品类型
     * @return 返回所有的一级商品类型
     */
    public List<GoodsType> findTopLevel() {
        GoodsTypeExample gte = new GoodsTypeExample();
        // andPidIsNull方法：没有父级标签
        gte.createCriteria().andPidIsNull();

        return goodsTypeMapper.selectByExample(gte);
    }

    /**
     * 根据一级类型，查询所有所属的二级商品类型
     * @param top 一级商品的id
     * @return 返回类型列表
     */
    public List<GoodsType> findSecondLevel(GoodsType top){
        GoodsTypeExample gte = new GoodsTypeExample();
        gte.createCriteria().andPidEqualTo(top.getId());

        return goodsTypeMapper.selectByExample(gte);
    }

    /**
     * 根据主键编号查询一个类型
     * @param goodsTypeId 主键
     * @return 一级商品属性
     */
    public GoodsType findById(Integer goodsTypeId) {
        System.out.println(goodsTypeId);
        return goodsTypeMapper.selectByPrimaryKey(goodsTypeId);
    }
}
