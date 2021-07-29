<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>cart</title>
</head>
<body>
	<div id="root">
		<!-- S: Index(Home).jsp 의 div 총괄 시작 -->
		<!-- S: 헤더 부분 시작 -->
		<header id="header">
			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
			<h1 style="text-align: center;">Cart</h1>
		</header>
		<!-- E: 헤더 부분 끝 -->
		

		<!-- S: 본문 영역 시작 -->
		<!-- cart-main-area start -->
		
		<div class="cart-main-area ptb--120 bg__white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<form action="#">
							<div class="table-content table-responsive">
								<table border="1">
									<thead>
										<tr>
											<th class="product-thumbnail">상품</th>
											<th class="product-name">상품 이름</th>
											<th class="product-price">가격</th>
											<th class="product-quantity">수량</th>
											<th class="product-subtotal">가격 합계</th>
											<th class="product-remove">삭제</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${cartList}" var="cartList">
										<tr>
											<td class="product-thumbnail"><img
													src="/zSemiProject/resources/upload/${cartList.pFname }"  alt="product img" /></td>
											<td class="product-name">${cartList.pNAME}</td>
											<td class="product-price"><span class="amount">
											<fmt:formatNumber pattern="###,###,###" 
											value="${cartList.pPRICE}" /></span></td>
											<td class="product-quantity"><input type="number"
												value="${cartList.cartSTOCK}" readonly /></td>
											<td class="product-subtotal"><fmt:formatNumber pattern="###,###,###" 
											value="${cartList.pPRICE * cartList.cartSTOCK}" /></td>
											<td class="product-remove"><a href="#">X</a></td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-md-8 col-sm-7 col-xs-12">
									
								</div>
								<div class="col-md-4 col-sm-5 col-xs-12">
									<div class="cart_totals">
										<h2>Cart Totals</h2>
										<table>
											<tbody>
												<tr class="cart-subtotal">
													<th>Subtotal</th>
													<td><span class="amount">£215.00</span></td>
												</tr>
												<tr class="shipping">
													<th>Shipping</th>
													<td>
														<ul id="shipping_method">
															<li><input type="radio" /> <label> Flat
																	Rate: <span class="amount">£7.00</span>
															</label></li>
															<li><input type="radio" /> <label> Free
																	Shipping </label></li>
															<li></li>
														</ul>
														<p>
															<a class="shipping-calculator-button" href="#">Calculate
																Shipping</a>
														</p>
													</td>
												</tr>
												<tr class="order-total">
													<th>Total</th>
													<td><strong><span class="amount">£215.00</span></strong>
													</td>
												</tr>
											</tbody>
										</table>
										<div class="wc-proceed-to-checkout">
											<a href="checkout.html">Proceed to Checkout</a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- cart-main-area end -->
		<!-- E: 본문 영역 끝 -->


		<!-- S: 푸터 영역 시작 -->
		<footer id="footer">
			<div id="footer_box">
				<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			</div>
		</footer>
	</div>
	<!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>