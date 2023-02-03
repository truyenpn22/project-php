<div class="row">
    <div class="row frmtitle mb">
        <h1>Danh sách đơn hàng</h1>
    </div>
    <form action="index.php?act=listbill" method="post">
        <input type="text" name="kyw" placeholder="Nhập mã đơn hàng">
        <input type="submit" name="listok" value="GO">            
    </form>
    <div class="row frmcontent">
        <div class="row mb10 frmdsloai">
            <table>
                <tr>
                    <th></th>
                    <th>Mã đơn hàng</th>
                    <th>Khách hàng</th>
                    <th>Số lượng hàng</th>
                    <th>Giá trị đơn hàng</th>
                    <th>Tình trạng đơn hàng</th>
                    <th>Ngày đặt hàng</th>
                    <th>Thao tác</th>                 
                </tr>
                <?php
                foreach ($listbill as $bill){
                    extract($bill);
                    $suadh="index.php?act=suadh&id=".$id;
                    $xoadh="index.php?act=xoadh&id=".$id;
                    $kh=$bill["bill_name"].'
                    <br> '.$bill["bill_email"].'
                    <br> '.$bill["bill_address"].'   
                    <br> '.$bill["bill_tel"];
                    $ttdh=get_ttdh($bill["bill_status"]);
                    $countsp= loadall_cart_count($bill["id"]);
                    echo '<tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>DAM-'.$bill['id'].'</td>
                    <td>'.$kh.'</td>
                    <td>'.$countsp.'</td>
                    <td><strong>'.$bill["total"].'</strong>VNĐ</td>
                    <td>'.$ttdh.'</td>
                    <td>'.$bill["ngaydathang"].'</td>
                    <td><a href="'.$suadh.'"><input type="button" value="Sửa"><a href="'.$xoadh.'"><input type="button" value="Xoá"></td>
                </tr>';         
                }
                ?>
                
            </table>
        </div>
        <div class="row mb10">
            <input type="button" value="Chọn tất cả">
            <input type="button" value="Bỏ chọn tất cả">
            <input type="button" value="Xoá các mục đã chọn">
            <a href="index.php?act=addsp"><input type="button" value="Nhập thêm"></a>
        </div>
    </div>
</div>