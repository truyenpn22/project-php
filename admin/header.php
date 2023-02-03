<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <style>
        .tab{
        background-color: black;
        color: #CCC;
        text-align: center;
        }
        .logo h1{
        font-size:4.0rem;
        text-decoration:none;
        color: #00274a;
        font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        text-shadow: 2px 0 0 #fff, -2px 0 0 #fff, 0 2px 0 #fff, 0 -2px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;
        height: 50px;
        text-align:center;
    }
    .tab ul {
        padding: 0px 10px;
    }
    
    .tab ul li {
        list-style-type: none;
        display: inline;
        padding: 0px 15px;
    }
    
    .tab ul li a {
        color: #CCC;
        text-decoration: none;
        transition: 0.5s;
    }
    
    .tab ul li a:hover {
        color: white;
        font-size: 0.8vw;
    }
 

    </style>
    <link rel="stylesheet" href="../view/css/style.css">

</head>

<body>
    <div class="boxcenter">
        <div class="row mb headeradmin">
        <div class="logo">
        	<h1>ADMIN</h1>
        </div>
        </div>
        <div class="row mb tab">
            <ul>
                <li><a href="index.php">Trang chủ</a></li>
                <li><a href="index.php?act=adddm">Danh mục</a></li>
                <li><a href="index.php?act=addsp">Hàng hóa</a></li>
                <li><a href="index.php?act=dskh">Khách hàng</a></li>
                <li><a href="index.php?act=dsbl">Bình luận</a></li>
                <li><a href="index.php?act=thongke">Thống kê</a></li>
                <li><a href="index.php?act=listbill">Danh sách đơn hàng</a></li>
            </ul>
        </div>
