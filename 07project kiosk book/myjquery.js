
$(function(){
	$('.menu > img').css({'width':'100px','height':'100px'});
	$('a > img').css({'width':'100px','height':'100px'});

	$('[rel="prettyPopin"]').prettyPopin({
		width:550
	});
	
	
    
	$('#btn').click(function(){
		


		//S: 주문내역에 받아오는 jquery
		var result = ''
		
		//각 변수값에 저장 및 반복
		var coffee1 = $('#label1').attr('value');
	    var price1 = $('#price1').attr('value');
		var count1 = $("#menu1Count option:selected").val();
		
		var coffee2 = $('#label2').attr('value');
	    var price2 = $('#price2').attr('value');
		var count2 = $("#menu2Count option:selected").val();
		
		var coffee3 = $('#label3').attr('value');
	    var price3 = $('#price3').attr('value');
		var count3 = $("#menu3Count option:selected").val();
		
		var coffee4 = $('#label4').attr('value');
	    var price4 = $('#price4').attr('value');
		var count4 = $("#menu4Count option:selected").val();
		
		var coffee5 = $('#label5').attr('value');
	    var price5 = $('#price5').attr('value');
		var count5 = $("#menu5Count option:selected").val();
		
		var coffee6 = $('#label6').attr('value');
	    var price6 = $('#price6').attr('value');
		var count6 = $("#menu6Count option:selected").val();
		
		var coffee7 = $('#label7').attr('value');
	    var price7 = $('#price7').attr('value');
		var count7 = $("#menu7Count option:selected").val();
		
		var coffee8 = $('#label8').attr('value');
	    var price8 = $('#price8').attr('value');
		var count8 = $("#menu8Count option:selected").val();
		
		var coffee9 = $('#label9').attr('value');
	    var price9 = $('#price9').attr('value');
		var count9 = $("#menu9Count option:selected").val();
		
		//합계 초기화
		let finalPrice=0;
		
		
		  if(count1 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee1 + '</td>';
			result += '<td>' + count1 + '</td>';
			result += '<td>' + price1 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price1*count1;
			
		}if(count2 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee2 + '</td>';
			result += '<td>' + count2 + '</td>';
			result += '<td>' + price2 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price2*count2;
			
		}if(count3 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee3 + '</td>';
			result += '<td>' + count3 + '</td>';
			result += '<td>' + price3 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price3*count3;
			
		}if(count4 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee4 + '</td>';
			result += '<td>' + count4 + '</td>';
			result += '<td>' + price4 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price4*count4;
			
		}if(count5 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee5 + '</td>';
			result += '<td>' + count5 + '</td>';
			result += '<td>' + price5 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price5*count5;
		
		}if(count6 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee6 + '</td>';
			result += '<td>' + count6 + '</td>';
			result += '<td>' + price6 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price6*count6;
			
		}if(count7 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee7 + '</td>';
			result += '<td>' + count7 + '</td>';
			result += '<td>' + price7 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price7*count7;
			
		}if(count8 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee8 + '</td>';
			result += '<td>' + count8 + '</td>';
			result += '<td>' + price8 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price8*count8;
		
		}if(count9 >= 1){
			result = '';
			result += '<tr id ="inserttr">';
			result += '<td>' + coffee9 + '</td>';
			result += '<td>' + count9 + '</td>';
			result += '<td>' + price9 + '</td>';
			result += '</tr>';
			$('#listTable').append(result);
			finalPrice += price9*count9;
		}
		 
	      $('#total').val(finalPrice);


	
	})
    $('#delete').click(function () {
        // 주문 내역 삭제 버튼 눌렀을시
        $('#inserttr').remove();      
        // 테이블 삭제
        var tot = 0;
        // 가격 총합 초기화
        $('.price').each(function () {
            tot += parseInt(this.innerText);
        });
        // 가격 총합 다시 계산
        $('#total').val(tot);
        // 가격 총합 출력
     }); 

})
