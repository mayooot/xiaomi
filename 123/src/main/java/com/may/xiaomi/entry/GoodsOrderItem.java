package com.may.xiaomi.entry;

public class GoodsOrderItem {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private String id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.goods_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Integer goodsId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.goods_img
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private String goodsImg;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.goods_price
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Double goodsPrice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.goods_count
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Integer goodsCount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.goods_subtotal
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private Double goodsSubtotal;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_order_item.goods_order_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    private String goodsOrderId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.id
     *
     * @return the value of goods_order_item.id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.id
     *
     * @param id the value for goods_order_item.id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.goods_id
     *
     * @return the value of goods_order_item.goods_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Integer getGoodsId() {
        return goodsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.goods_id
     *
     * @param goodsId the value for goods_order_item.goods_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.goods_img
     *
     * @return the value of goods_order_item.goods_img
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public String getGoodsImg() {
        return goodsImg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.goods_img
     *
     * @param goodsImg the value for goods_order_item.goods_img
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg == null ? null : goodsImg.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.goods_price
     *
     * @return the value of goods_order_item.goods_price
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Double getGoodsPrice() {
        return goodsPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.goods_price
     *
     * @param goodsPrice the value for goods_order_item.goods_price
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.goods_count
     *
     * @return the value of goods_order_item.goods_count
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Integer getGoodsCount() {
        return goodsCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.goods_count
     *
     * @param goodsCount the value for goods_order_item.goods_count
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsCount(Integer goodsCount) {
        this.goodsCount = goodsCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.goods_subtotal
     *
     * @return the value of goods_order_item.goods_subtotal
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public Double getGoodsSubtotal() {
        return goodsSubtotal;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.goods_subtotal
     *
     * @param goodsSubtotal the value for goods_order_item.goods_subtotal
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsSubtotal(Double goodsSubtotal) {
        this.goodsSubtotal = goodsSubtotal;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_order_item.goods_order_id
     *
     * @return the value of goods_order_item.goods_order_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public String getGoodsOrderId() {
        return goodsOrderId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_order_item.goods_order_id
     *
     * @param goodsOrderId the value for goods_order_item.goods_order_id
     *
     * @mbg.generated Thu Aug 26 15:59:32 CST 2021
     */
    public void setGoodsOrderId(String goodsOrderId) {
        this.goodsOrderId = goodsOrderId == null ? null : goodsOrderId.trim();
    }
}