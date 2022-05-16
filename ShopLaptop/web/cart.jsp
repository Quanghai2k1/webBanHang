<%-- 
    Document   : cart
    Created on : May 15, 2022, 2:35:47 PM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cartCss.css">
    <link rel="stylesheet" href="css/reset.css"> 
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Cart</title>
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
                        <table class="table-product">
                            <thead>
                                <tr>
                                    <th class="product-name" colspan="3">SẢN PHẨM</th>
                                    <th class="product-price">GIÁ</th>
                                    <th class="product-quantity">SỐ LƯỢNG</th>
                                    <th class="product-sub">TỔNG CỘNG</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                                <tr>
                                    <td class="remove"><i class="fa-solid fa-x"></i></td>
                                    <td class="thumbnail"><a href=""><img width="50" height="50" src="//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image" alt="" srcset="//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg 300w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-150x150.jpg 150w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-24x24.jpg 24w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-36x36.jpg 36w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-48x48.jpg 48w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600.jpg 600w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-100x100.jpg 100w" sizes="(max-width: 300px) 100vw, 300px"></a></td>
                                    <td class="name">ĐỒNG HỒ LOUIS ERARD 13900AA05</td>
                                    <td class="price">100000</td>
                                    <td class="quantity">
                                        <input type="number" class="number" step="1" min="1" max="999">
                                    </td>
                                    <td class="sub">100000</td>
                                </tr>
                                <tr>
                                    <td class="remove"><i class="fa-solid fa-x"></i></td>
                                    <td class="thumbnail"><a href=""><img width="50" height="50" src="//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image" alt="" srcset="//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg 300w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-150x150.jpg 150w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-24x24.jpg 24w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-36x36.jpg 36w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-48x48.jpg 48w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600.jpg 600w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-100x100.jpg 100w" sizes="(max-width: 300px) 100vw, 300px"></a></td>
                                    <td class="name">ĐỒNG HỒ LOUIS ERARD 13900AA05</td>
                                    <td class="price">100000</td>
                                    <td class="quantity">
                                        <input type="number" class="number" step="1" min="1" max="999">
                                    </td>
                                    <td class="sub">100000</td>
                                </tr>
                        </table>
                    </div>
                </div>
                <div class="right-content col l5 m5 c12">
                    <div class="cart-sidebar">
                        <div class="header-cart">
                            TỔNG SỐ LƯỢNG
                        </div>
                        <div class="sub-price">
                            <h2>Tổng cộng</h2>
                            <span>19,473,300 ₫</span>
                        </div>
                        <div class="ship">
                            <h2>Giao hàng</h2>
                            <span>Giao hàng miễn phí</span>
                        </div>
                        <input type="text" class="code" placeholder="Mã ưu đãi">
                    </div>

                    <div class="checkout">
                        <a href="" class="link-checkout">Thanh Toán</a>
                    </div>
                </div>
            </div>
        </div>
        

    </div>
</body>
</html>
