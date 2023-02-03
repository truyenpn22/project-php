<?php
session_start();
include "../../model/pdo.php";
include "../../model/binhluan.php";
$idpro=$_REQUEST['idpro'];
$dsbl=loadall_binhluan($idpro);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
    <div class="row mb">
        <div class="boxtitle">Bình luận</div>
        <div class="boxcontent2 binhluan">
            <table>
            <tr>
                <th>Tên</th>
                <th>Nội dung</th>
                <th>ID Sản phẩm</th>
                <th>Ngày bình luận</th>
            </tr>
            
            <?php
                            foreach ($dsbl as $bl) {
                                extract($bl);
                                echo'<tr><td>'.$user.'</td>';
                                echo'<td>'.$noidung.'</td>';
                                echo'<td>'.$idpro.'</td>';
                                echo'<td>'.$ngaybinhluan.'</td></tr>';

                            }     
             ?>
             </table>
        </div>
        <div class="boxfooter binhluanform">
            <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
                <input type="hidden" name="idpro" value="<?=$idpro?>">
                <input type="text" name="noidung">
                <input type="submit" name="guibinhluan" value="Gửi bình luận">
            </form>
        </div>  
        <?php
        if(isset($_POST['guibinhluan'])&&($_POST['guibinhluan'])){
            $noidung= trim(strip_tags($_POST['noidung']));
            $idpro=$_POST['idpro'];
            $user=$_SESSION['user']['user'];
            $ngaybinhluan=date('h:i:sa d/m/Y'); 
            insert_binhluan($noidung,$user,$idpro,$ngaybinhluan);
            header("Location: ".$_SERVER['HTTP_REFERER']);
        }
        ?>
    </div>
</body>

</html>