
$(function() {
	//1. 날짜 표시 
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth() + 1;
	var date = now.getDate();

	$('.year').text(year);
	$('.month').text(month);
	$('.date').text(date);

	//2.포커스
	
	//$('#keyword').css({'background' : 'url()'});
	$('#keyword').focus(function() {
		$(this).css({'background' : 'url()'});
	})

	$('#keyword').blur(
			function() {
				$(this).css({'background' : 'url(images/sch_guide.gif)'});
				$(this).css('background-repeat', 'no-repeat');
			})

	//3.탭

	$('.tab_btn1').click(function() {

		$(this).find('img').attr('src', 'images/tab_btn_1_over.gif');//클릭시 over 이미지 출력

		$('.tab_btn2').find('img').attr('src', 'images/tab_btn_2_out.gif');
		$('.tab_btn3').find('img').attr('src', 'images/tab_btn_3_out.gif');

		// △탭 이미지 전환 작업
		
		$('dd').hide(); //내용을 숨겨야 중복이 안

		$(this).next('dd').show(); //'숨긴 dd의 

		$('dt').removeClass('on');

		$(this).addClass('on');
	});

	$('.tab_btn2').click(function() {

		$(this).find('img').attr('src', 'images/tab_btn_2_over.gif');//클릭시 over 이미지 출력

		$('.tab_btn1').find('img').attr('src', 'images/tab_btn_1_out.gif');
		$('.tab_btn3').find('img').attr('src', 'images/tab_btn_3_out.gif');

		// △탭 이미지 전환 작업
		
		$('dd').hide(); //내용을 숨겨야 중복이 안

		$(this).next('dd').show(); //'숨긴 dd의 

		$('dt').removeClass('on');

		$(this).addClass('on');
	});

	$('.tab_btn3').click(function() {

		$(this).find('img').attr('src', 'images/tab_btn_3_over.gif'); //클릭시 over 이미지 출력

		$('.tab_btn1').find('img').attr('src', 'images/tab_btn_1_out.gif');
		$('.tab_btn2').find('img').attr('src', 'images/tab_btn_2_out.gif');
		
		// △탭 이미지 전환 작업
		
		$('dd').hide(); //내용을 숨겨야 중복이 안

		$(this).next('dd').show(); 

		$('dt').removeClass('on');

		$(this).addClass('on');
	});

	//4.이미지 슬라이더
	

	$('#best_bg ul').css('list-style', 'none')
	$('#best_bg ul li').css('float', 'left');

	var sliderImage = $('#best_bg ul').bxSlider({
		minSlides : 5,
		maxSlides : 5,
		slideMargin : 5,
		slideWidth : 300,
		auto : true,
		moveSlides : 1,
		infiniteLoop : true,
		nextSelector : '.next_btn', // 다음으로 넘길 객체
		prevSelector : '.prev_btn', // 이전으로 넘길 객체
		nextText : '', // 객체 텍스트
		prevText : '' // 객체 텍스트

	});

	$('.next_btn').click(function() { // 다음이미지 클릭 시
		sliderImage.goToNextSlide();
		return false;
	});
	$('.prev_btn').click(function() { // 이전 이미지 클릭 시
		sliderImage.goToPrevSlide();
		return false;
	});
	    	   
	 

	// 5.로그인
	// 로그인 버튼
	$(".login_wrap a").click(function() {
		$('#login_f').css('top', '35px') //로그인 버튼 클릭시 form css 컨트롤
		
	});

	// CLOSE 버튼
	$(".login_close_btn").click(function() {
		$('#login_f').css('top', '-500px'); //로그인 close 클릭시 form css 컨트롤

	});

	//6.전체메뉴
	
	$("#total_btn").click(function(e) {
		$('#total_btn').find('img').attr('src', 'images/allmenu_btn_over.gif');
		//
		e.preventDefault();

		if ($('#total_menu').css('display') == 'none') {
			$('#total_menu').slideDown();
		} else {
			$('#total_btn').find('img').attr('src', 'images/allmenu_btn_out.gif');
			$('#total_menu').slideUp();
		}
	});

	//닫힘버튼
	$("#total_close").click(function(e) {
		$('#total_btn').find('img').attr('src', 'images/allmenu_btn_out.gif');
		$('#total_menu').slideUp();

	});
	   
	    	    
	    	    

})