<div class="row mb ">
            <div class="boxtrai mr">
                <div class="row">
                    <div class="banner mb">
                        <div class="slideshow-container">

                        <div class="mySlides fade">
                        <div class="numbertext">1 / 3</div>
                        <img src="view/images/banner-1.jpg" style="width:100%">
                        <div class="text">Caption Text</div>
                        </div>

                        <div class="mySlides fade">
                        <div class="numbertext">2 / 3</div>
                        <img src="view/images/banner-2.jpg" style="width:100%">
                        <div class="text">Caption Two</div>
                        </div>

                        <div class="mySlides fade">
                        <div class="numbertext">3 / 3</div>
                        <img src="view/images/banner-3.jpg" style="width:100%">
                        <div class="text">Caption Three</div>
                        </div>

                        </div>
                        <br>

                        <div style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                        $i=0;
                        foreach ($spnew as $sp) {
                            extract($sp);
                            $linksp="index.php?act=sanphamct&idsp=".$id;
                            $hinh=$img_path.$img;
                            if(($i==2)||($i==5)||($i==8)){
                                $mr="";
                            }else{
                                $mr="mr";
                            }
                            echo '<div class="boxsp '.$mr.'">
                                    <div class="row img"><a href="'.$linksp.'"><img src="'.$hinh.'" alt=""></a></div>
                                    <p>$'.$price.'</p>
                                    <a href="'.$linksp.'">'.$name.'</a>
                                    <div class="row btnaddtocart">
                                    <form action="index.php?act=addtocart" method="post">
                                    <input type="hidden" name="id" value="'.$id.'">
                                    <input type="hidden" name="name" value="'.$name.'">
                                    <input type="hidden" name="img" value="'.$img.'">
                                    <input type="hidden" name="price" value="'.$price.'">
                                    <input type="submit" name="addtocart" value="Thêm vào giỏ hàng">
                                    </form>
                                    </div>
                                </div>';
                            $i+=1;
                        }
                    ?>
                    <!-- <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp ">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp ">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div>
                    <div class="boxsp ">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>$30</p>
                        <a href="#">Đồng hồ</a>
                    </div> -->
                </div>
            </div>
            <div class="boxphai">
                <?php include "boxright.php";?>
            </div>
        </div>