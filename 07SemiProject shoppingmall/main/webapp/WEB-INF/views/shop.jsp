<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id = "root"> <!-- S: Index(Home).jsp 의 div 총괄 시작 -->
<!-- S: 헤더 부분 시작 -->
   <header id= "header">
      <div id = "header_box">
         <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      </div>
   </header>
   <!-- E: 헤더 부분 끝 -->
   

   <!-- S: 본문 영역 시작 -->
    <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(https://perfumegraphy.com/_images/mainBnr_05.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area --> 
        <!-- Start Our Product Area -->
        <section class="htc__product__area shop__page ptb--130 bg__white">
            <div class="container">
                <div class="htc__product__container">
                    <!-- Start Product MEnu -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="filter__menu__container">
                                <div class="product__menu">
                                    <button data-filter="*"  class="is-checked">All</button>
                                    <button data-filter=".cat--1">Spring</button>
                                    <button data-filter=".cat--2">Summer</button>
                                    <button data-filter=".cat--3">Fall</button>
                                    <button data-filter=".cat--4">Winter</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Product MEnu -->
                    <div class="row">
                        <div class="product__list another-product-style">
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 cat--1 col-sm-4 col-xs-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do">
                                                <img src="resources/images/product/CHANEL5.jpg" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">CHANEL NO.5</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">160,000원</li>
                                            <li class="new__price">100,000원</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 cat--1 col-sm-4 col-xs-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="resources/images/product/2.png" alt="product images">
                                            </a>
                                        </div>
                                       
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">BO&Play Wireless Speaker</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/3.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Brone Candle</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="resources/images/product/4.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Brone Lamp Glasses</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 cat--1 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/5.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Clothes Boxed</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/6.png" alt="product images">
                                            </a>
                                        </div>
                                       
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Liquid Unero Ginger Lily</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/7.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Miliraty Backpack</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/8.png" alt="product images">
                                            </a>
                                        </div>
                                       
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Saved Wines Corkscrew</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/9.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Simple Fabric Bags</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/10.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Simple Fabric Chair</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/11.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Unero Round Sunglass</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/12.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Unero Small Bag</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/13.png" alt="product images">
                                            </a>
                                        </div>
                                       
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Wood Complex Lamp Box</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start 
 -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/14.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Wood Long TV Board</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/15.png" alt="product images">
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Wood Simple Chair V2</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 hidden-sm col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="images/product/16.png" alt="product images">
                                            </a>
                                        </div>
                                       
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="productdetails.do">Wood Simple Clock</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">$16.00</li>
                                            <li class="new__price">$10.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
   
   <!-- E: 본문 영역 끝 -->
   
   
   <!-- S: 푸터 영역 시작 -->
   <footer id = "footer">
      <div id = "footer_box">
         <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      </div>
   </footer>
</div> <!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>