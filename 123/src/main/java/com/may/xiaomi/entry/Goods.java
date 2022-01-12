package com.may.xiaomi.entry;

import java.util.List;

public class Goods {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.name
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.price
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Double price;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.stock
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Integer stock;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.goods_type_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Integer goodsTypeId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.remark
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private String remark;

    private List<GoodsImages> goodsImages;

    public List<GoodsImages> getGoodsImages() {
        return goodsImages;
    }

    public void setGoodsImages(List<GoodsImages> goodsImages) {
        this.goodsImages = goodsImages;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.id
     *
     * @return the value of goods.id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.id
     *
     * @param id the value for goods.id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.name
     *
     * @return the value of goods.name
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.name
     *
     * @param name the value for goods.name
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.price
     *
     * @return the value of goods.price
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Double getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.price
     *
     * @param price the value for goods.price
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setPrice(Double price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.stock
     *
     * @return the value of goods.stock
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Integer getStock() {
        return stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.stock
     *
     * @param stock the value for goods.stock
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setStock(Integer stock) {
        this.stock = stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.goods_type_id
     *
     * @return the value of goods.goods_type_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.goods_type_id
     *
     * @param goodsTypeId the value for goods.goods_type_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.remark
     *
     * @return the value of goods.remark
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.remark
     *
     * @param remark the value for goods.remark
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }


    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", goodsTypeId=" + goodsTypeId +
                ", remark='" + remark + '\'' +
                '}';
    }
}