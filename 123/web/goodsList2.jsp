<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城 - 商品列表</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/goodslist.css">
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head>
<body>
<!-- 网页头部导航 -->
<div id="top">
    <div id="navtop">
        <div class="ntleft">
            <a href="#">小米商城</a> | <a href="#">MIUI</a> | <a href="#">IoT</a> | <a href="#">云服务</a> | <a href="#">金融</a>
            |
            <a href="#">有品</a> | <a href="#">小爱开放平台</a> | <a href="#">企业团购</a> | <a href="#">资质证照</a> | <a
                href="#">协议规则</a> | <a href="#">下载app</a> | <a href="#">Select Location</a>
        </div>
        <div class="ntright">
            <a href="#">登录</a> | <a href="#">注册</a> | <a href="#">消息通知</a>
            <div><a href="/xiaomi/shopcart.jsp">购物车 (0)</a></div>
        </div>
    </div>
</div>
<header>
    <div id="logo">
        <a href="index.jsp" title="小米商城">
            <img src="/xiaomi/static/images/logo.png" alt="">
        </a>
    </div>
    <ul id="navigate">
        <li>
            <a href="/xiaomi/goodsList2.jsp?level=1&goodsTypeId=101" style="color: inherit; font-size: 17px;">小米手机</a>
        </li>
        <li>
            <a href="/xiaomi/goodsList2.jsp?level=2&goodsTypeId=10002" style="color: inherit; font-size: 17px;">Redmi 红米</a>
        </li>
        <li>
            <a href="/xiaomi/goodsList2.jsp?level=1&goodsTypeId=102" style="color: inherit; font-size: 17px;">电视</a>
        </li>
        <li>
            <a href="/xiaomi/goodsList2.jsp?level=1&goodsTypeId=103" style="color: inherit; font-size: 17px;">笔记本</a>
        </li>
        <li>
            <a href="#" style="color: inherit; font-size: 17px;">家电</a>
        </li>
        <li>
            <a href="#" style="color: inherit; font-size: 17px;">智能硬件</a>
        </li>
        <li>
            <a href="#" style="color: inherit; font-size: 17px;">服务</a>
        </li>
        <li>
            <a href="#" style="color: inherit; font-size: 17px;">社区</a>
        </li>
    </ul>

    <form action="#" id="search">
        <input type="text">
        <button></button>
    </form>
</header>

<div class="listcontainer">
    <ul class="page-nav">
        <li><a href="#">首页</a></li>
        <li>&gt;</li>
        <li><a href="#">全部结果</a></li>
        <li>&gt;</li>
        <li id="goods-name1">路由器</li>
    </ul>

    <div class="types">
        <div class="tcontent">
            <span>分类：</span>
            <span>全部</span>
            <span id="goods-name2">路由器</span>
        </div>
    </div>

    <div class="glist">
        <div class="glisttitle">
            <ul>
                <li>综合</li>
                <li>|</li>
                <li>新品</li>
                <li>|</li>
                <li>销量</li>
                <li>|</li>
                <li>价格 <i></i></li>
            </ul>

            <ul>
                <li>收货地：<span>河南 郑州</span></li>
                <li><input type="checkbox">促销</li>
                <li><input type="checkbox">分期</li>
                <li><input type="checkbox">仅看有货</li>
            </ul>
        </div>
        <div class="glistbox" id="search_goods_box">
            <!-- 搜索到的商品展示区域 -->
        </div>

        <div class="favlist">
            <div class="fltitle">
                <div class="flbg"></div>
                <div class="fldesc">猜你喜欢</div>
            </div>
            <div class="flbox">
                <div class="goodsboxitem">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="/xiaomi/static/images/sg4.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="goodsboxitem">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="/xiaomi/static/images/sg4.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="goodsboxitem">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="/xiaomi/static/images/sg4.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="goodsboxitem">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="/xiaomi/static/images/sg4.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="goodsboxitem">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="/xiaomi/static/images/sg4.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div style="clear:both;"></div>
        </div>
    </div>
</div>

<footer>
    <!-- 维修客户服务 -->
    <div id="footer-service">
        <ul>
            <li><a href="#"><img src="/xiaomi/static/images/ss01.png" alt="">预约维修服务</a></li>
            <li><a href="#"><img src="/xiaomi/static/images/ss02.png" alt="">7天无理由退货</a></li>
            <li><a href="#"><img src="/xiaomi/static/images/ss03.png" alt="">15天免费换货</a></li>
            <li><a href="#"><img src="/xiaomi/static/images/ss04.png" alt="">满150元包邮</a></li>
            <li><a href="#"><img src="/xiaomi/static/images/ss05.png" alt="">520余家售后网点</a></li>
        </ul>
    </div>
    <!-- 快捷连接 -->
    <div id="footer-links">
        <dl>
            <dt>帮助中心</dt>
            <dd><a href="#">账户管理</a></dd>
            <dd><a href="#">购物指南</a></dd>
            <dd><a href="#">订单操作</a></dd>
        </dl>
        <dl>
            <dt>服务支持</dt>
            <dd><a href="#">售后政策</a></dd>
            <dd><a href="#">自助服务</a></dd>
            <dd><a href="#">相关下载</a></dd>
        </dl>
        <dl>
            <dt>线下门店</dt>
            <dd><a href="#">小米之家</a></dd>
            <dd><a href="#">服务网点</a></dd>
            <dd><a href="#">授权体验店</a></dd>
        </dl>
        <dl>
            <dt>关于小米</dt>
            <dd><a href="#">了解小米</a></dd>
            <dd><a href="#">加入小米</a></dd>
            <dd><a href="#">投资者关系</a></dd>
        </dl>
        <dl>
            <dt>关注我们</dt>
            <dd><a href="#">新浪微博</a></dd>
            <dd><a href="#">官方微信</a></dd>
            <dd><a href="#">联系我们</a></dd>
        </dl>
        <dl>
            <dt>特色服务</dt>
            <dd><a href="#">F 码通道</a></dd>
            <dd><a href="#">礼物码</a></dd>
            <dd><a href="#">防伪查询</a></dd>
        </dl>
    </div>
    <!-- 网站信息-->
    <div id="site-info">
        <div class="sileft">
            <img src="/xiaomi/static/images/logo.png" alt="">
        </div>
        <div class="siright">
            <a href="#">小米商城</a> | <a href="#">MIUI</a> | <a href="#">米家</a> | <a href="#">米聊</a> | <a href="#">多看</a> |
            <a href="#">游戏</a> | <a href="#">路由器</a> | <a href="#">米粉卡</a> | <a href="#">政企服务</a> | <a
                href="#">小米天猫店</a> | <a href="#">小米集团隐私政策</a> | <a href="#">小米公司儿童信息保护规则</a> | <a href="#">小米商城隐私政策</a>
            |
            <a href="#">小米商城用户协议</a> | <a href="#">问题反馈</a> | <a href="#">廉正举报</a> |
            <a href="#">诚信合规</a> | <a href="#">Select Location</a><br/>
            <a href="#">© mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2017]1530-131号</a><br/>
            <a href="#">（京）网械平台备字（2018）第00005号 互联网药品信息服务资格证 (京) -非经营性-2014-0090 营业执照 医疗器械质量公告</a><br/>
            <a href="#">增值电信业务许可证</a> <a href="#">网络食品经营备案（京）【2018】WLSPJYBAHF-12 食品经营许可证</a>
            <a href="#">违法和不良信息举报电话：185-0130-1238 知识产权侵权投诉 本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</a>
        </div>
    </div>
</footer>
<script src="js/jquery/jquery-3.4.1.js"></script>
<script>
    $(function() {
        // ?level=1&goodsTypeid=102
        // 1. 获取搜索关键词
        let $search = window.location.search.substring(1).split("&"); // [level=1, goodsTypeid=102]
        let $level = $search[0].split("=")[1]; // 1
        let $goodsTypeId = $search[1].split("=")[1]; // 102
        console.log($level, $goodsTypeId);
        // 2. Ajax请求，搜索商品
        $.ajax({
            url: "/xiaomi/u/search/" + $level + "/" +  parseInt($goodsTypeId),
            method: "GET",
            success: function(response) {
                console.log(response);

                // 展示搜索到的商品
                let $goodsList = response.objectMap.goodsList;
                loadGoods($goodsList, $("#search_goods_box"));

                let $goodsTypeName = response.objectMap.goodsTypeName;
                $("#goods-name1").text($goodsTypeName);
                $("#goods-name2").text($goodsTypeName);
            },
            error: function() {
                console.log("搜索请求迷路了...");
            }
        });
        function loadGoods(goodsList, container) {
            // 遍历商品列表，将商品添加到页面汇总
            for(let i = 0; i < goodsList.length; i++) {
                let $boxitem = $("<div>").addClass("goodsboxitem");
                let $a = $("<a>").attr("href", "/xiaomi/detail.jsp?gid=" + goodsList[i].id);
                let $content = $("<div>").addClass("content");

                let $thumb = $("<div>").addClass("thumb");
                let $img = $("<img>").attr("src", goodsList[i].goodsImages[0].path);
                $thumb.append($img);
                let $thumbx = $("<div>").addClass("thumbnailx");
                let $img2 = $("<img>").attr("src", goodsList[i].goodsImages[1].path);
                $thumbx.append($img2);



                let $title = $("<div>").addClass("title").text(goodsList[i].name);
                let $desc = $("<div>").addClass("desc").text(goodsList[i].remark.substring(10));

                let $price = $("<div>").addClass("price");
                let $span = $("<span>").text(goodsList[i].price + "元");
                let $del = $("<del>").text(goodsList[i].price + "元");
                $price.append($span).append($del);

                $content.append($thumb).append($title).append($desc).append($price).append($thumbx);
                $a.append($content);
                $boxitem.append($a);

                container.append($boxitem);
            }
        }

        $("#search button").click(function () {
            // 获取搜索关键词
            let $word = $("#search input").val();
            console.log($word);
            // 跳转页面
            window.location = "/xiaomi/goodsList.jsp?wd=" + $word;
            // 按钮存在表单当中，所以点击按钮的时候需要阻止浏览器的默认行为
            window.event.returnValue = false;
        });



    });
</script>
</body>
</html>
