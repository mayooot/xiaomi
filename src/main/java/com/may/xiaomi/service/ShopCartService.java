package com.may.xiaomi.service;

import com.may.xiaomi.dao.GoodsCartMapper;
import com.may.xiaomi.entry.Consumer;
import com.may.xiaomi.entry.Goods;
import com.may.xiaomi.entry.GoodsCart;
import com.may.xiaomi.entry.GoodsCartExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.net.ssl.HandshakeCompletedEvent;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * <p>项目文档： 购物车相关业务处理类</p>
 *
 * @author liming
 * @version 1.0.0
 * @createTime 2021年08月31日 20:29:00
 */
@Service
public class ShopCartService {
    @Autowired
    private GoodsCartMapper goodsCartMapper;


    /**
     * 指定商品加入购物车
     * @param consumer 用户
     * @param goods 要加入购物车的商品
     * @return 返回加入状态
     */
    public boolean addGoodsToShopCart(Consumer consumer, Goods goods) {
        // 查询指定的商品在当前用户的购物车中是否存在
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId())
                .andGoodsIdEqualTo(goods.getId());


        List<GoodsCart> cartList = goodsCartMapper.selectByExample(gce);

        if (cartList.size() > 0) {
            // 更新购买数量
            int count = cartList.get(0).getBuyCount();
            cartList.get(0).setBuyCount(count + 1);
            // 更新金额
            double price = cartList.get(0).getSubtotal() / count * cartList.get(0).getBuyCount();
            cartList.get(0).setSubtotal(price);
            goodsCartMapper.updateByExampleSelective(cartList.get(0), gce);
        } else {
            // 新增商品
            // public GoodsCart(Integer goodsId, Integer buyCount, Date addDate, Double subtotal, Integer consumerId
            GoodsCart goodsCart = new GoodsCart(goods.getId(), 1, new Date(), goods.getPrice(), consumer.getId());
            goodsCartMapper.insert(goodsCart);
        }

        return true;

    }

    /**
     * 从购物车中删除指定的商品
     * @param consumer 用户
     * @param goods 要删除的商品
     * @return 返回删除结果
     */
    public boolean removeGoodsFromShopCart(Consumer consumer, Goods goods) {
        // 判断商品在购物车中是否存在
        List<GoodsCart> cartList = this.checkGoods(consumer, goods);
        if (cartList.size() > 0) {
            // 商品存在 删除
            goodsCartMapper.deleteByPrimaryKey(cartList.get(0).getId());
            return true;
        }
        System.out.println("商品不存在在该用户的购物车中...");
        return false;
    }

    /**
     * 查询指定用户购物车中所有商品
     * @param consumer 指定用户
     * @return 返回该用户购物车中的所有商品
     */
    public List<GoodsCart> findAllGoodsCartWithConsumer(Consumer consumer) {
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId());

        return goodsCartMapper.selectByExample(gce);
    }

    /**
     * 判断某个商品在购物车中是否存在
     * @param consumer 所属用户
     * @param goods 要查询的商品
     * @return 商品数据
     */
    private List<GoodsCart> checkGoods(Consumer consumer, Goods goods) {
        // 查询指定的商品在当前用户的购物车中是否存在
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId())
                .andGoodsIdEqualTo(goods.getId());


        return goodsCartMapper.selectByExample(gce);
    }
}
