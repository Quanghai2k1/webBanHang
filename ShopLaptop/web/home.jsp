<%-- 
    Document   : home
    Created on : Apr 17, 2022, 10:08:54 AM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <link rel="stylesheet" href="owlcarousel/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="owlcarousel/assets/owl.theme.default.min.css">  
        <link rel="stylesheet" href="./css/reset.css">
        <link rel="stylesheet" href="./css/homestyle.css">  
        <link rel="stylesheet" href="./css/grid.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <title>Home</title>
    </head>
    <body>
        <div class="main">
            <div class="slider">
                <div class="owl-carousel owl-theme">
                    <div class="item item1">
                        <img src="./img/b4.jpg" alt="" class="img1">
                    </div>
                    <div class="item item2">
                        <img src="./img/b2.jpg" alt="" class="img2">
                    </div>
                    <div class="item item3">
                        <img src="./img/b5.jpg" alt="" class="img3">
                    </div>

                </div>

                <div class="header-slider">
                
                    <div class="logo-header">
                        <a href="" class="logo-link">
                            HARIN
                        </a>
                    </div>

                    <div class="menu-header">
                        <ul class="list-header">
                            <li class="item-header "><a href="#" class="link-header br">GIỚI THIỆU</a></li>
                            <li class="item-header "><a href="#" class="link-header br">LAPTOP</a></li>
                            <li class="item-header "><a href="" class="link-header br">PHỤ KIỆN</a></li>
                            <li class="item-header "><a href="" class="link-header br">TIN TỨC</a></li>
                            <li class="item-header"><a href="" class="link-header">LIÊN HỆ</a></li>
                        </ul>
                    </div>



                    <div class="search-cart-account">
                        <form action="search" method="post">
                            <div class="sca" id="search">
                                <input value="${valueSearch}" name="textSearch" type="text" class="input-search" placeholder=" Tìm kiếm">
                                <button type="submit" class="button-search">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                        </form>


                        <div class="sca" id="cart">
                            <a href="" class="link-cart">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                        </div>

                        <div class="sca" id="account">
                            <a href="" class="link-account">
                                <i class="fa-solid fa-circle-user"></i>
                                <h3 class="name-user">Quang Hai</h3>
                            </a>

                        </div>
                    </div>

                </div>

<!--                <div class="text-slider">
                    <h3 class="text-item">Chào Mừng Bạn Đến Với</h3>
                    <h1 class="text-item">Harin Fashion</h1>
                    <p class="text-item">Most unique fashion in 2022</p>

                    <button id="shop-button">
                        <a href="" class="shopnow">SHOP NOW</a>
                    </button>
                </div>-->

            </div>

            <div class="grid wide content">
                <div class="tyle-product row">
                    <a href="" class="men col l6 m6 c12">
                        <img src="./img/lap.jpg" alt="" class="img-pro img-men">
                        <div class="tyle-content laptop-link-content">
                            <div class="men-text">
                                <h1>Máy Tính</h1>
                                <p>Spring 2022</p>
                            </div>
                        </div>   
                    </a>

                    <a href="" class="women col l6 m6 c12">

                        <img src="./img/mouse.jpg" alt="" class="img-pro img-women">
                        <div class="tyle-content mouse-link-content">
                            <div class="men-text">
                                <h1>Phụ Kiện</h1>
                                <p>Spring 2022</p>
                            </div>
                        </div>    

                    </a>

<!--                    <a href="" class="trend col l4 m4 c12">
                        <img src="./img/hot.jfif" alt="" class="img-pro img-trend">
                        <div class="tyle-content men-link-content">
                            <div class="men-text">
                                <h1>Trend</h1>
                                <p>Spring 2022</p>
                            </div>
                        </div>    
                    </a>-->
                </div>

                <div class="section">
                    <div class="row row-section">
                        <div class="col-section col l4 m4 c4">
                            <div class="main-section">
                                <div class="icon-section">
                                    <i class="fa-solid fa-shield"></i>
                                </div>
                                <div class="content-section">
                                    <p>Chất lượng tốt nhất</p>
                                    <h3>Chuyên bán lẻ các dụng cụ, thiết bị văn phòng.</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-section col l4 m4 c4">
                            <div class="main-section">
                                <div class="icon-section">
                                    <i class="fa-solid fa-money-bill"></i>
                                </div>
                                <div class="content-section">
                                    <p>Giá cả phù hợp</p>
                                    <h3>Chuyên bán lẻ các dụng cụ, thiết bị văn phòng.</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-section col l4 m4 c4">
                            <div class="main-section">
                                <div class="icon-section">
                                    <i class="fa-brands fa-product-hunt"></i>
                                </div>
                                <div class="content-section">
                                    <p>Sản phẩm đa dạng</p>
                                    <h3>Chuyên bán lẻ các dụng cụ, thiết bị văn phòng.</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="lap">
                    <h2 class="textLap">Máy Tính</h2>
                </div>

                <div class="product-content row">
                    <c:forEach items="${listLaptopProduct}" var="p">
                        <div class="product col l3 m4 c12">
                            <img src="${p.image}" alt="" class="img-product">
                            <button class="product-button">
                                <a href="detail?pid=${p.id}" class="link_product-button">Chi Tiết</a>
                            </button>
                            <div class="inf-product">
                                <a href="" class="name-product">${p.name}</a>
                                <p class="price">$${p.price}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                
                <div class="lap">
                    <h2 class="textLap">Phụ Kiện</h2>
                </div>
                <div class="product-content row">
                    <c:forEach items="${listPhukienProduct}" var="k">
                        <div class="product col l3 m4 c12">
                            <img src="${k.hinhanh}" alt="" class="img-product">
                            <button class="product-button">
                                <a href="detail?kid=${k.id}" class="link_product-button">Chi Tiết</a>
                            </button>
                            <div class="inf-product">
                                <a href="" class="name-product">${p.ten}</a>
                                <p class="price">$${k.gia}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                
            </div>
            
                
            
            <footer class="footer">
                <div class="category">
                    <p>CATEGORIES</p>
                    <ul class="cate-menu">
                        <li class="cate-list">Women</li>
                        <li class="cate-list">Men</li>
                        <li class="cate-list">Shoes</li>
                        <li class="cate-list">Watches</li>
                    </ul>
                </div>

                <div class="help">
                    <p>HELP</p>
                    <ul class="help-menu">
                        <li class="help-list">Track Order</li>
                        <li class="help-list">Return</li>
                        <li class="help-list">Shipping</li>
                        <li class="help-list">FAQs</li>
                    </ul>
                </div>

                <div class="get">
                    <p>GET IN TOUCH</p>
                    <h4>Any questions?</h4>
                    <h4>Let us know in store at 8th floor,</h4>
                    <h4>379 Hudson St, New York,</h4>    
                    <h4> NY 10018 or call us on (+1) 96 716 6879</h4>

                </div>

                <div class="help">
                    <p>NEWSLETTER</p>

                </div>
            </footer>
        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="owlcarousel/owl.carousel.min.js"></script>
        <script>$(document).ready(function(){
            $(".owl-carousel").owlCarousel();
          });</script>

        <script>autoplay:false
            autoplayTimeout:5000
            autoplayHoverPause:false</script>
        <script>var owl = $('.owl-carousel');
            owl.owlCarousel({
                items:1,
                loop:true,
                margin:10,
                autoplay:true,
                autoplayTimeout:2000,
                autoplayHoverPause:true
            });
            $('.play').on('click',function(){
                owl.trigger('play.owl.autoplay',[2000])
            })
            $('.stop').on('click',function(){
                owl.trigger('stop.owl.autoplay')
            })</script>
        <script>
            $(document).ready(function(){
                $(window).scroll(function(){
                    if ($(this).scrollTop()){
                        $('.header-slider').addClass('sticky');

                    }
                    else{
                        $('.header-slider').removeClass('sticky');

                    }
                })
            })
        </script>
        

    </body>
</html>
