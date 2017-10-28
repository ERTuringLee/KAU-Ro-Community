$(document).ready(function () {
	$('body').on('click', '#engineering', function(){
		$('#menu-selecting').empty();
		$('#majoring').empty();
		$('#scroll1').empty();
		var output='';
		output+='공과대학<hr>'
		output+='<br />';
		output+='<a id="electronic_information">항공전자정보공학부</a>';
		output+='<br /><br />';
		output+='<a id="software">소프트웨어학과</a>';
		output+='<br /><br />';
		output+='<a id="mechatronic">항공우주 및 기계공학부</a>';
		output+='<br /><br />';
		output+='<a id="material">항공재료공학과</a>';
		$('#majoring').append(output);
		var output1='';
		output1+='선택<hr />';
		$('#menu-selecting').append(output1);
		
	});
	$('body').on('click', '#aerospace_business', function(){
		$('#menu-selecting').empty();
		$('#majoring').empty();
		$('#scroll1').empty();
		var output='';
		output+='항공/경영대학<hr>'
		output+='<br />';
		output+='<a id="transport_mulyu">항공·교통·물류학부</a>';
		output+='<br /><br />';
		output+='<a id="pilot">항공운항학과</a>';
		output+='<br /><br />';
		output+='<a id="business">경영학부</a>';
		output+='<br /><br />';
		$('#majoring').append(output);
		var output1='';
		output1+='선택<hr />';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#peple_nature', function(){
		$('#menu-selecting').empty();
		$('#majoring').empty();
		$('#scroll1').empty();
		var output='';
		output+='인문자연학부<hr>'
		output+='<br />';
		output+='<a id="gyoyang">교양학과</a>';
		$('#majoring').append(output);
		var output1='';
		output1+='선택<hr />';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#electronic_information', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='항공전자정보공학부<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="electronic_information_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="electronic_information_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="electronic_information_detail">세부전공</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="electronic_information_subject">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#electronic_information_information', function(){
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/page/dept/etce1/main.jsp', 'child1', '',true);
	});
	$('body').on('click', '#electronic_information_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/avionic_information_information.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#electronic_information_subject', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/electronic_information_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#electronic_information_detail', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<table border="1" style="width:100%"><tr>'
		output2+='<th style="width:50%"><a style="cursor:pointer" id="information">정보통신공학전공</a></th><th><a style="cursor:pointer" id="electronic">전자 및 항공전자공학전공</a></th>'
		output2+='</tr></table>'
		output2+='<div id="detail-major" style="width:100%;hight:400px;">'
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#information', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/information.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#electronic', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/electronic.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#software', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='소프트웨어학과<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="software_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="software_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="software_subject">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#software_information', function(){
		$('#scroll1').empty();
		window.open('http://sw.kau.ac.kr/', 'child2', '',true);
	});

	$('body').on('click', '#software_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/software_information.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#software_subject', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/software_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#mechatronic', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='항공우주 및 기계공학부<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="mechatronic_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="mechatronic_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="mechatronic_detail">세부전공</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="mechatronic_subject">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#mechatronic_information', function(){
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/dept/asm/', 'child3', '',true);
	});
	$('body').on('click', '#mechatronic_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/mechatronic_introduce.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#mechatronic_detail', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<table border="1" style="width:100%"><tr>'
		output2+='<iframe src="major/mechatronic_detail.html"style="width:99%;height:400px;"></iframe>'
		output2+='</tr></table>'
		output2+='<div id="detail-major" style="width:100%;hight:400px;">'
		$('#scroll1').append(output2);
		

	});
	
	$('body').on('click', '#mechatronic_subject', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<table border="1" style="width:100%"><tr>'
		output2+='<th style="width:33%"><a style="cursor:pointer" id="hangkongwooju_subject">항공우주공학전공</a></th><th style="width:33%"><a style="cursor:pointer" id="gigye_subject">기계공학전공</a></th><th style="width:33%"><a style="cursor:pointer" id="hangkonsystem_subject">항공기시스템공학전공</a></th>'
		output2+='</tr></table>'
		output2+='<div id="detail-major" style="width:100%;hight:400px;">'
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#hangkongwooju_subject', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/hangkongwooju_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#gigye_subject', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/gigye_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#hangkonsystem_subject', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/hangkonsystem_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#material', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='항공재료공학과<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="material_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="material_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="material_subject">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#material_information', function(){
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/dept/materials/', 'child4', '',true);
	});
	$('body').on('click', '#material_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/material_introduce.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#material_subject', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/material_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#transport_mulyu', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='항공·교통·물류학부<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="transport_mulyu_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="transport_mulyu_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="transport_mulyu_detail">세부전공</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#transport_mulyu_information', function() {
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/page/web/universe_law/main.jsp', 'child5', '',true);
	});
	$('body').on('click', '#transport_mulyu_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/transport_mulyu_introduce.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#transport_mulyu_detail', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<table border="1" style="width:100%"><tr>'
		output2+='<th style="width:33%"><a style="cursor:pointer" id="gyotong">항공교통전공</a></th><th style="width:33%"><a style="cursor:pointer" id="mulyu">물류전공</a></th><th style="width:33%"><a style="cursor:pointer" id="gytongsystem">교통시스템전공</a></th>'
		output2+='</tr></table>'
		output2+='<div id="detail-major" style="width:100%;hight:400px;">'
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#gyotong', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/gyotong.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#mulyu', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/mulyu.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});
	$('body').on('click', '#gytongsystem', function(){
		$('#detail-major').empty();
		var output3='';
		output3 +='<iframe src="major/gytongsystem.html"style="width:99%;height:400px;"></iframe>';
		$('#detail-major').append(output3);
	});

	
	$('body').on('click', '#pilot', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='항공운항학과<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="pilot_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="pilot_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="pilot_subject">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#pilot_information', function(){
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/page/web/aviation_service/main.jsp', 'child6', '',true);
	});
	$('body').on('click', '#pilot_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/pilot_introduce.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#pilot_subject', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/pilot_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#business', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='경영학부<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="business_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="business_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="business_detail">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#business_information', function(){
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/page/web/business/main.jsp', 'child7', '',true);
	});
	$('body').on('click', '#business_introduce', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/business_information.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#business_detail', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/business_detail.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
	$('body').on('click', '#gyoyang', function(){
		$('#menu-selecting').empty();
		$('#scroll1').empty();
		var output1='';
		output1+='교양학과<hr>'
		output1+='<br />';
		output1+='<a style="cursor:pointer" id="gyoyang_information">홈페이지</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="gyoyang_introduce">소개</a>';
		output1+='<br /><br />';
		output1+='<a style="cursor:pointer" id="gyoyang_subject">교과과정</a>';
		$('#menu-selecting').append(output1);
	});
	$('body').on('click', '#gyoyang_information', function(){
		$('#scroll1').empty();
		window.open('http://www.kau.ac.kr/page/web/ct_education/main.jsp', 'child8', '',true);
	});
	$('body').on('click', '#gyoyang_introduce', function(){
		$('#scroll1').empty();
		var output2 = '';
		output2 +='<table>';
		output2 +='<tr>'
		output2+='<td rowspan = "3"><img src="major/gyoyang1.jpg"></td>';
		output2+='<td>&nbsp;<img src="major/gyoyang3.gif"></td>';
		output2 +='</tr>'
		output2+='<td>&nbsp;<img src="major/gyoyang2.gif"></td>';
		output2 +='<tr>'
		output2+='<td>&nbsp;<img src="major/gyoyang4.gif"></td>';
		output2 +='</tr>'
		output2 +='</table>';
		$('#scroll1').append(output2);
	});
	$('body').on('click', '#gyoyang_subject', function(){
		$('#scroll1').empty();
		var output2='';
		output2 +='<iframe src="major/gyoyang_subject.html"style="width:99%;height:400px;"></iframe>';
		$('#scroll1').append(output2);
		
	});
})