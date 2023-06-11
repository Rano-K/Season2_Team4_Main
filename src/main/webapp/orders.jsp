<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>하루를 신선하게</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
		
			
			<style>
			.row {
			  display: flex;
			  justify-content: flex-start;
			}
			
			.table1 {
			  margin-left: 100px;
			}
			</style>
    
</head>
<%
	Boolean result = (Boolean) request.getAttribute("list");
%>

<script>
function checkResult(event) {
    var sendResult = '<%=result %>';
    
    if (sendResult === 'false'){
    	alert("주문에 실패했습니다.");
    	event.preventDefault(); // 폼 제출 이벤트 중지
    }else {
    	alert("주문이 완료되었습니다.");
    }
}
</script>

<body>
    <!-- Page Preloder -->
    <!-- <div id="preloder">
        <div class="loader"></div>
    </div>

    Humberger Begin
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>우리팀 로고 이미지 등록
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            </ul>
            <div class="header__cart__price">현재고른 상품액수: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>  헤더부분에 국가 정하는 것
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">체험단</a></li>
                <li><a href="#">상품구매</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">한끼식사</a></li>
                        <li><a href="./shoping-cart.html">매일아침 구독상품</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">고객센터</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div> 상단에 공유 관련정보 표기
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> 로그인한 id정보 표시</li>
                <li>구독상품 며칠 남았는지</li>
            </ul>
        </div>
    </div> -->
    <!-- Humberger End -->
    
    <%@ include file="header.jsp"%>
    
    

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li>로그인한 id표시</li>
                                <li>구독상품 며칠남았는지 표시</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                           <!--  <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div> -->
                            <!-- <div class="header__top__right__language">
                                <img src="img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div> -->
                            <div class="header__top__right__auth">
                                <a href="#"><i class="fa fa-user"></i> 로그인안했을 때: Login,로그인했을 때:Logout</a>
                                <a href="#"><i class="fa fa-user"></i> 로그인안했을 때: 회원가입,로그인했을 때:myPage</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="./img/featured/로고.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <!-- <li><a href="./shop-grid.html">체험단</a></li> -->
                            <li><a href="#">상품구매</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">구독상품구매</a></li>
                                    <li><a href="./shoping-cart.html">일반상품구매</a></li>
                                    <li><a href="./checkout.html"></a></li>
                                    <li><a href="./blog-details.html"></a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">고객센터</a></li>
                            <!-- <li><a href="./contact.html">Contact</a></li> -->
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">총금액 <span>32,000</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>제품목록</span>
                        </div>
                        <ul>
                            <li><a href="#">한끼대용상품</a></li>
                            <li><a href="#">구독상품</a></li>
                            <!-- <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                          <!--   <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Shopping Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
	    		<%
					String login = (String)session.getAttribute("ID"); 
				%>
                <div class="row">
                	<div class="col-lg-12">
                	<form action="insertorders.do" method="post">
						<input type="hidden" name="userid" value="<%= login %>">
						<input type="hidden" name="pcode" value="${info.pcode}">
						<input type="hidden" name="count" value="${num}">
						<table class="table1">

							
							<tr>
							
								<td colspan="3">
									<div class="product-info">
									
										<p>수령인 : ${uInfo.name}</p>
										<p>수령인 전화번호 : ${uInfo.telno}</p>
										<p>배송지 : <input type="text" name="address" value="${uInfo.address}"></p>
										<p>이메일 : ${uInfo.email}</p>
										<img src="${info.photo}" alt="Product">
										<p>품목명 : ${info.name}</p>
										<p>수량 : ${num}</p>	
										<p>가격 : ${info.price * num}</p>
																												
									</div>
								</td>
							</tr>
					</table>
					<button type="submit" onclick="submitForm('insertorders.do')">결제하기</button>
					
				  </form>
                </div>
            </div>
       
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="#" class="primary-btn cart-btn cart-btn-right" onclick="window.location.href='main.do'">메인페이지</a>
                    </div>
                </div>
          
                <div class="col-lg-12">
                 
                    <div class="shoping__checkout">
                        <h5>카트 총 상품가격</h5>
                        <ul>
                        <li>총 상품가격 : <fmt:formatNumber value="${info.price * num}" type="number" pattern="#,##0" />원</li>
                        <li>총주문가격 : <fmt:formatNumber value="${info.price * num}" type="number" pattern="#,##0" />원</li>
                        </ul>
                       
                        <a class="primary-btn" onclick="window.location.href='insertorders.do'">결제하기</a>
                    </div>
                </div>
            </div>
     
    </section>
    <!-- Shoping Cart Section End -->


    <!-- Footer Section Begin -->
    
  	<%@ include file="footer.jsp"%>
   
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>

</html>