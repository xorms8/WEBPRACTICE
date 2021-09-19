<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
<title>Index 홈페이지</title>
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
     <main>
        <!--? Hero Area Start-->
        <div class="slider-area hero-bg1 hero-overly">
            <div class="single-slider hero-overly  slider-height1 d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10 col-lg-10">
                            <!-- Hero Caption -->
                            <div class="hero__caption pt-100">
                                <h1>view단 InDEX</h1>
                                <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                            </div>
                            <!--Hero form -->
                            <form action="#" class="search-box mb-100">
                                <div class="input-form">
                                    <input type="text" placeholder="What are you finding?">
                                </div>
                                <div class="select-form">
                                    <div class="select-itms">
                                        <select name="select" id="select1">
                                            <option value="">In where?</option>
                                            <option value="">Catagories One</option>
                                            <option value="">Catagories Two</option>
                                            <option value="">Catagories Three</option>
                                            <option value="">Catagories Four</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="search-form">
                                    <a href="#"><i class="ti-search"></i> Search</a>
                                </div>	
                            </form>	
                            <!-- hero category1 img -->
                            <div class="category-img text-center">
                                <a href="listing.html"> <img src="resources/img/gallery/hero_category1.png" alt=""></a>
                                <a href="listing.html"> <img src="resources/img/gallery/hero_category2.png" alt=""></a>
                                <a href="listing.html"> <img src="resources/img/gallery/hero_category3.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero Area End-->
        <!--? Popular Locations Start 01-->
        <div class="popular-location border-bottom section-padding40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>Explore top cities</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/location1.png" alt="">
                            </div>
                            <div class="location-details">
                                <p>New York</p>
                                <a href="#" class="location-btn">65 <i class="ti-plus"></i> Listing</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/location2.png" alt="">
                            </div>
                            <div class="location-details">
                                <p>Paris</p>
                                <a href="#" class="location-btn">60 <i class="ti-plus"></i> Listing</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/location3.png" alt="">
                            </div>
                            <div class="location-details">
                                <p>Rome</p>
                                <a href="#" class="location-btn">50 <i class="ti-plus"></i> Listing</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/location4.png" alt="">
                            </div>
                            <div class="location-details">
                                <p>Italy</p>
                                <a href="#" class="location-btn">28 <i class="ti-plus"></i> Location</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/location5.png" alt="">
                            </div>
                            <div class="location-details">
                                <p>Nepal</p>
                                <a href="#" class="location-btn">99 <i class="ti-plus"></i> Listing</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Popular Locations End -->
        <!--? Popular Directory Start -->
        <div class="popular-directorya-area  border-bottom section-padding40 fix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>Popular Directory</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                        </div>
                    </div>
                </div>
                <div class="directory-active">
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/properties1.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/properties2.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/properties3.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/properties3.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--? Popular Directory End -->
        <!--? Want To work 01-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper w-padding2">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-7 col-lg-9 col-md-8">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <h2>How it works</h2>
                                <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4">
                            <a href="#" class="btn f-right sm-left">Explore Listing</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Want To work End -->
        <!--? Our Services Start -->
        <div class="our-services  border-bottom">
            <div class="container">
                <div class="row">
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <span>01</span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Find Businesses</a></h5>
                                <p>Discover & connect with great local businesses in your local neighborhood like dentists, hair stylists and more.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <span>02</span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Review Listings</a></h5>
                                <p>Discover & connect with great local businesses in your local neighborhood like dentists, hair stylists and more.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <span>03</span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Make a Reservation</a></h5>
                                <p>Discover & connect with great local businesses in your local neighborhood like dentists, hair stylists and more.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Our Services End -->
        <!--? Popular Directory Start -->
        <div class="popular-directorya-area section-padding40 border-bottom fix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>New Directory</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                        </div>
                    </div>
                </div>
                <div class="directory-active">
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/newDirectory1.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/newDirectory2.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/newDirectory3.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="properties pb-20">
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <a href="#"><img src="resources/img/gallery/properties1.png" alt=""></a>
                                <div class="img-text">
                                    <span>$$$</span>
                                    <span>Closed</span>
                                </div>
                                <div class="icon">
                                    <img src="resources/img/gallery/categori_icon1.png" alt=""> 
                                </div>
                            </div>
                            <div class="properties__caption">
                                <h3><a href="#">Urban areas</a></h3>
                                <p>Let's uncover the best places to eat, drink</p>
                            </div>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <img src="resources/img/gallery/restaurant-icon.png" alt="">
                                    <h3>Food & Restaurant</h3>
                                </div>
                                <div class="heart">
                                    <img src="resources/img/gallery/heart1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Popular Directory End -->
        <!--? Popular Locations Start 01-->
        <div class="popular-location border-bottom section-padding40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>News & Updates</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/home-blog1.png" alt="">
                            </div>
                            <div class="location-details">
                                <a href="#" class="location-btn">Tips</a>
                                <ul>
                                    <li>12 March   I   by Alan</li>
                                </ul>
                                <p><a href="blog_details.html">The Best SPA Salons For Your Relaxation</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/home-blog2.png" alt="">
                            </div>
                            <div class="location-details">
                                <a href="#" class="location-btn">Tips</a>
                                <ul>
                                    <li>12 March   I   by Alan</li>
                                </ul>
                                <p><a href="blog_details.html">The Best SPA Salons For Your Relaxation</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Popular Locations End -->
        <!--? Want To work 02-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper w-padding2">
                    <div class="row justify-content-between">
                        <div class="col-xl-8 col-lg-8 col-md-7">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <img src="resources/img/logo/logo2_footer.png" alt="" class="mb-20">
                                <p>Users and submit their own items. You can create different packages and by connecting with your
                                    PayPal or Stripe account charge users for registration to your directory portal.</p>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-5">
                            <div class="footer-social f-right sm-left">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Want To work End -->
        <!--? Want To work 01-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-7 col-lg-9 col-md-8">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <div class="main-menu2">
                                    <nav>
                                        <ul>
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="explore.html">Explore</a></li> 
                                            <li><a href="pages.html">Pages</a></li>
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4">
                            <a href="#" class="btn f-right sm-left">Add Listing</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Want To work End -->
    </main>
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