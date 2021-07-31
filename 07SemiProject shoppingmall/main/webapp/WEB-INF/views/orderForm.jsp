<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>orderForm</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	// S: 상품 전체선택 jquery
	$(function() {  
		$('#allCheck').click(function(){
			var check = $("#allCheck").prop("checked");
			if(check){
				$(".chBox").prop("checked", true);
			} else{
				$(".chBox").prop("checked", false);
			}
		});
		
		$(".chBox").click(function(){
			$("#allCheck").prop("checked",false);
		});
		
	// E: 상품 전체선택 jquery
		
		//S: 상품 check box 삭제 jquery
		
		$(".selectDelete_btn").click(function(){
			  var confirm_val = confirm("삭제하시겠습니까?");
			  
			  if(confirm_val) {
			   var checkArr = new Array();
			   $("input[class='chBox']:checked").each(function(){
			    checkArr.push($(this).attr("data-cartNUM"));
			   });
			    
			   $.ajax({
			    url : "deleteCart.do",
			    type : "post",
			    contentType : "application/x-www-form-urlencoded;charset=UTF-8",
			    data : { chbox : checkArr },
			    success : function(result){
			    	if(result==1){
			    		 location.href = "cart.do";
			    	}else{
			    		alert("삭제실패");
			    	}
			    
			    }
			   });
			  } 
			 });
		
		//E: 상품 삭제 jquery
		
		
		
		
	})
</script>
</head>
<body>
	<div id="root">
		<!-- S: Index(Home).jsp 의 div 총괄 시작 -->
		<!-- S: 헤더 부분 시작 -->
		<header id="header">
			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
			<h1 style="text-align: center;">주문서</h1>
			<div class="-subtitle" style="text-align: center;">주문하실 상품명 및
				수량을 정확하게 확인해 주세요.</div>
		</header>
		<!-- E: 헤더 부분 끝 -->


		<!-- S: 본문 영역 시작 -->

		<!-- S: 카트 정보 -->
		<br/><br/><br/>
		<div class="container">
			<h3 style="text-align: center;">배송지</h3>
			<form class="form-horizontal" method="post" action="payment.do">
			<input type="hidden" name="oAMOUNT" value="${totalPrice}"/>
			<%-- <input type="hidden" name="mID" value="${mID}"/> --%>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oNAME">받는사람 </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oNAME" name="oNAME">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oPHONE">연락처</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oPHONE"
							placeholder="연락처" name="oPHONE">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oADDRESS1">우편번호</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oADDRESS1"
							placeholder="우편번호" name="oADDRESS1">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oADDRESS2">1차주소</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oADDRESS2"
							placeholder="1차주소" name="oADDRESS2">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oADDRESS3">2차주소</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oADDRESS3"
							placeholder="2차주소" name="oADDRESS3">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="btn btn-default">주문</button>
					</div>
				</div>
			</form>
		</div>



		<div class="cart-main-area ptb--120 bg__white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<form action="#">
							<div class="table-content table-responsive">
								<table border="1">
									<thead>
										<tr>
											<th>
												<div class="allCheck">
													<input type="checkbox" name="allCheck" id="allCheck" /><label
														for="allCheck">모두선택</label>

												</div>
											</th>
											<th class="product-thumbnail">상품</th>
											<th class="product-name">상품 이름</th>
											<th class="product-price">가격</th>
											<th class="product-quantity">수량</th>
											<th class="product-subtotal">가격 합계</th>
											<th class="selectDelete_btn"><button type="button" class="btn btn-default">선택삭제</button></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${cartList}" var="cartList">
											<tr>
												<td>
													<div class="checkBox">
														<input type="checkbox" name="chBox" class="chBox"
															data-cartNum="${cartList.cartNUM }" />
													</div>
												</td>

												<td class="product-thumbnail"><img
													src="/zSemiProject/resources/upload/${cartList.pFname }"
													alt="product img" /></td>
												<td class="product-name">${cartList.pNAME}</td>
												<td class="product-price"><span class="amount">
														<fmt:formatNumber pattern="###,###,###"
															value="${cartList.pPRICE}" />
												</span></td>
												<td class="product-quantity"><input type="number"
													value="${cartList.cartSTOCK}" readonly /></td>
												<%-- <td class="product-quantity">${cartList.cartSTOCK}개</td> --%>
												<td class="product-subtotal"><fmt:formatNumber
														pattern="###,###,###"
														value="${cartList.pPRICE * cartList.cartSTOCK}" /></td>
												<td class="product_${cartList.cartNUM}_remove"
													data-cartNum="${cartList.cartNUM }"><a href="#"></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-md-8 col-sm-7 col-xs-12"></div>
								<div class="col-md-4 col-sm-5 col-xs-12">
									<div class="cart_totals">
										<h2>결제정보</h2>
										<br/>
										<table>
											<tbody>
												<tr class="order-total">
													<th>Total</th>
													<td><strong><span class="amount"><fmt:formatNumber
																	pattern="###,###,###" value="${totalPrice}" />원</span></strong></td>
												</tr>
											</tbody>

										</table>
										<br/><br/>
										<div class="wc-proceed-to-checkout">
											<a href="payment.do">결제하기</a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<!-- E: 카트 영역 끝 -->
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