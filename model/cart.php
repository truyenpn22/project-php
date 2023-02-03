<?php
function viewcart($del){
    global $img_path;
    $tong=0;
    $i=0;
    if($del==1){
        $xoasp_th='<th>Thao tác</th>';                 
        $xoasp_td2='<td></td>';
      }else {
          $xoasp_th='';
          $xoasp_td2='';
      }       
     echo' <tr>
     <th>Hình</th>
     <th>Sản phẩm</th>
     <th>Đơn giá</th>
     <th>Số lượng</th>
     <th>Thành tiền</th>
     '.$xoasp_th.'
 </tr>';

    foreach($_SESSION['mycart'] as $cart) {
        $hinh=$img_path.$cart[2];
        $ttien=$cart[3]*$cart[4];
        $tong+=$ttien;
        if($del==1){               
        $xoasp_td='<td><a href="index.php?act=delcart&idcart='.$i.'"><input type="button" value="Xóa"></a></td>';
      }else {
          $xoasp_td='';
      }       
        echo' <tr>
        <td><img src="'.$hinh.'" alt="" height="80px"</td>
        <td>'.$cart[1].'</td>
        <td>'.$cart[3].'</td>
        <td>'.$cart[4].'</td>
        <td>'.$ttien.'</td>
        '.$xoasp_td.'
    </tr>';
    $i+=1;
    }
    echo '<tr>
             <td colpan="4">Tổng đơn hàng</td>
             <td></td>
             <td></td>
             <td></td>
            <td>'.$tong.'</td>
            '.$xoasp_td2.'
         </tr>';
}
function bill_chi_tiet($listbill){
    global $img_path;
    $tong=0;
    $i=0;  
     echo' <tr>
     <th>Hình</th>
     <th>Sản phẩm</th>
     <th>Đơn giá</th>
     <th>Số lượng</th>
     <th>Thành tiền</th>
 </tr>';

    foreach($listbill as $cart) {
        $hinh=$img_path.$cart['img'];
        $tong+=$cart['thanhtien'];  
        echo' <tr>
        <td><img src="'.$hinh.'" alt="" height="80px"</td>
        <td>'.$cart['name'].'</td>
        <td>'.$cart['price'].'</td>
        <td>'.$cart['soluong'].'</td>
        <td>'.$cart['thanhtien'].'</td>
    </tr>';
    $i+=1;
    }
    echo '<tr>
             <td colpan="4">Tổng đơn hàng</td>
             <td></td>
             <td></td>
             <td></td>
            <td>'.$tong.'</td>
         </tr>';
}
function tongdonhang(){
    $tong=0;


    foreach($_SESSION['mycart'] as $cart){
        $ttien=$cart[3]*$cart[4];
        $tong+=$ttien;
    }
    return $tong;
}

function insert_bill($iduser,$name,$email,$address,$tel,$pttt,$ngaydathang,$tongdonhang){
    $sql="insert into bill(iduser,bill_name,bill_email,bill_address,bill_tel,bill_pttt,ngaydathang,total) values('$iduser','$name','$email','$address','$tel','$pttt','$ngaydathang','$tongdonhang')";
    return pdo_execute_return_lastInsertId($sql);
}
function insert_cart($iduser,$idpro,$img,$name,$price,$soluong,$thanhtien,$idbill){
    $sql="insert into cart(iduser,idpro,img,name,price,soluong,thanhtien,idbill) values('$iduser','$idpro','$img','$name','$price','$soluong','$thanhtien','$idbill')";
    return pdo_execute($sql);
}
function loadone_bill($id){
    $sql="select * from bill where id=".$id;
    $bill=pdo_query_one($sql);
    return $bill;
}
function loadall_cart($idbill){
    $sql="select * from cart where idbill=".$idbill;
    $bill=pdo_query($sql);
    return $bill;
}

function loadall_cart_count($idbill){
    $sql="select * from cart where idbill=".$idbill;
    $bill=pdo_query($sql);
    return sizeof($bill);
}

function loadall_bill_admin($kyw="",$iduser=0){
    $sql="select * from bill where 1"; 
    if($iduser>0) $sql.=" AND iduser=".$iduser;
    if($kyw!="") $sql.=" AND id like '%".$kyw."%'";
    $sql.=" order by id desc";
    $listbill=pdo_query($sql);
    return $listbill;
}

function loadall_bill($iduser){
    $sql="select * from bill where iduser = $iduser order by id desc";
    $listbill=pdo_query($sql);
    return $listbill;
}

function get_ttdh($n){
    switch ($n){
        case '0' :
            $tt=" Đơn hàng mới ";
            break;
        case '1' :
            $tt = " Đang xử lý ";
            break;
        case '2' :
            $tt = " Đang giao hàng ";
            break;
        case '3' :
            $tt = " Hoàn thành ";
            break;
        default :
            $tt = " Đơn hàng mới";
            break;
    }
    return $tt;
}
function delete_bill($id){
    $sql="delete from bill where id=".$id;
    pdo_execute($sql);
}
function loadall_thongke(){
    $sql=" select danhmuc.id as madm,danhmuc.name as tendm, count(sanpham.id) as countsp, min(sanpham.price) as minprice, max(sanpham.price) as maxprice, avg(sanpham.price) as avgprice";
    $sql.=" from sanpham left join danhmuc on danhmuc.id=sanpham.iddm"; 
    $sql.=" group by danhmuc.id order by danhmuc.id desc";
    $listtk=pdo_query($sql);
    return $listtk; 
}
function update_bill($id,$status){
    $sql="update bill set bill_status='".$status."' where id=".$id;
    pdo_execute($sql);
}
?>
