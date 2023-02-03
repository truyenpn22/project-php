<div class="box-title"><h3 class="heading">GIỎ HÀNG</h3></div>
         
            <div class="row boxcon cart">
                <table>
                    <!-- <tr>
                        <th>Hình</th>
                        <th>Sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                        <th>Thao tác</th>
                    </tr> -->

                    <?php 
                   viewcart(1);
                    ?>
                    <table>
                        <br>
            </div>
        <div class="row mb bill">
        <a href="index.php"><input type="submit" value="Tiếp tục đặt hàng"></a>
        <a href="index.php?act=bill"><input type="submit" value="Thanh toán"></a>
        <a href="index.php?act=delcart"><input type="button" value="Xóa giỏ hàng"></a>
        </div>
    <style>
        .bill input{
            padding: 10px;
            margin-right:15px;
        }
        .boxtitle{
            width: 100%;
        }
        .boxtrai{
            margin-left: 180px;
            
        }
    </style>