<%-- 
    Document   : pay
    Created on : May 15, 2022, 2:42:58 PM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/cartCss.css">
        <link rel="stylesheet" href="css/reset.css"> 
        <link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>pay</title>
    </head>
    <body>
        <div class="wrapper ">
            <div class="header">
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
                    <form action="" method="post">
                        <div class="sca" id="search">
                            <input type="text" class="input-search" placeholder=" Tìm kiếm">
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

                        <!-- <div class="div-infor">
                            <a href="" class="cart-shop">Giỏ hàng</a>
                            <a href="" class="logout">Log out</a>
                        </div> -->
                    </div>
                </div>
            </div>

            <div class="content grid wide">
                <div class="content-cart row">
                    <div class="left-content col l7 m7 c12">
                        <div class="product">
                            <h1>THÔNG TIN THANH TOÁN</h1>

                            <div class="information">
                                <div class="information-input">
                                    <label for="name" class="label-name">Tên</label>
                                    <input type="text" id="name" class="input-infor">
                                </div>
                                <div class="information-input">
                                    <label for="address" class="label-name">Địa chỉ</label>
                                    <input type="text" id="address" class="input-infor">
                                </div>
                                <div class="information-input">
                                    <label for="phone" class="label-name">Số điện thoại</label>
                                    <input type="text" id="phone" class="input-infor">
                                </div>
                                <div class="information-input">
                                    <label for="email" class="label-name">Email</label>
                                    <input type="text" id="email" class="input-infor">
                                </div>
                                <div class="information-input">
                                    <label for="note" class="label-name">Chú thích</label>
                                    <input type="text" id="note" class="input-infor">
                                </div>

                            </div> 
                        </div>
                    </div>
                    <div class="right-content col l5 m5 c12">
                        <div class="cart-sidebar">
                            <div class="header-cart">
                                <h1>Sản phẩm</h1>
                                <h1>Tổng</h1>
                            </div>
                            <div class="product">
                                <div class="product-pay">
                                    <h2 class="name-product">Sản phẩm x</h2> 
                                    <h2 class="quantity"> 1</h2>
                                </div>

                                <span class="price">19,473,300 ₫</span>
                            </div>
                            <div class="ship">
                                <h2>Giao hàng</h2>
                                <span>Giao hàng miễn phí</span>
                            </div>
                            <div class="ship-pay">
                                <h2>Thanh toán</h2>
                                <span>Trả tiền khi nhận hàng</span>
                            </div>
                            <div class="sum">
                                <h2>Tổng</h2>
                                <span>19,473,300 ₫</span>
                            </div>
                        </div>

                        <div class="checkout">
                            <a href="" class="link-checkout">Đặt Hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
