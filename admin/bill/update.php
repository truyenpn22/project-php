<?php

    if(is_array($bill)){
        extract($bill);
    }

?>

<section class="row">
        <h1 class="heading">Cập nhập đơn hàng</h1>
        <div class="row frmcontent">
        <form action="index.php?act=updatedh" method="post">
        <div class="row mb10">
            Đơn Hàng
        <input type="text" name="id" disabled value="DON-<?=$bill['id']?>">
         </div>
         <div class="row mb10">
             Trạng Thái Đơn Hàng
         </div>
        <select name="status" >
            <option value="0">Đơn hàng mới</option>
            <option value="1">Đang xử lí</option>
            <option value="2">Đang giao hàng</option>
            <option value="3">Hoàn thành</option>
        </select>
        <br>
        <div class="row mb10" style="margin-top:15px;">
                <input type="hidden" name="id" value="<?php if(isset($id) && ($id>0)) echo $id?>">
                <input type="submit" name="capnhat" value="Cập nhật">
                <input type="reset" value="Reset">
                <a href="index.php?act=listbill"><input type="button" value="Danh sách"></a> 
            </div>
            <?php
                if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
            ?>
        </form>
</div>
    </section>
