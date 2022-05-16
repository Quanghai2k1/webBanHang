<%-- 
    Document   : Detail
    Created on : Apr 19, 2022, 10:53:24 AM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="./reset.css"> -->
        <link rel="stylesheet" href="./css/detail.css">  
        <link rel="stylesheet" href="/grid.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Detail</title>
    </head>
    <body>
        <div class="wrapper">

            <div class="img-product">
                <h2 class="name">${p.name}</h2>
                <h2 class="price">$${p.price}</h2>
                <img src="${p.image}" alt="">
            </div>
            <div class="detail">

                <p class="description overflow">${p.description}
                </p>
                <button  class="more">Xem Thêm</button>
                <button  class="less dis">Ẩn Bớt</button>

                <div class="infor">
                    <p>Thông số kỹ thuật</p>
                    <table>
                        <tr>
                          <td>Màn hình</td>
                          <td>${p.manhinh}</td>
                        </tr>
                        <tr>
                          <td>CPU</td>
                          <td>${p.cpu}</td>
                        </tr>
                        <tr>
                          <td>RAM</td>
                          <td>${p.ram}</td>
                        </tr>
                        <tr>
                          <td>Ổ cứng</td>
                          <td>${p.ocung}</td>
                        </tr>
                        <tr>
                          <td>Đồ họa</td>
                          <td>${p.dohoa}</td>
                        </tr>
                        <tr>
                          <td>Trọng lượng</td>
                          <td>${p.trongluong}</td>
                        </tr>
                        <tr>
                          <td>kích thước</td>
                          <td>${p.kichthuoc}</td>
                        </tr>
                      </table>
                </div>
                <div class="cart">
                    <button class="add">Thêm vào giỏ hàng</button>
                    <button class="buy">Mua ngay</button>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        <script>
            $(document).ready(function(){
                $(".more").click(function(){
                    $('.description').removeClass('overflow');
                    $('.more').addClass('dis');
                    $('.less').removeClass('dis');
                })
            })
        </script>

        <script>
            $(document).ready(function(){
                $(".less").click(function(){
                    $('.description').addClass('overflow');
                    $('.less').addClass('dis');
                    $('.more').removeClass('dis');
                })
            })
        </script>
    </body>
</html>
