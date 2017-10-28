$(document).ready(function () {
	$('#menuCategory').change(function () {
		$('#menuimage').empty();
		var selected = $('#menuCategory>option:selected').val();
		if(selected=="선택"){
			$('#resName').empty();
			var output1='';
			output1+='<option>식당이름칸</option>';
			$('#resName').append(output1);
		}
		if(selected=="치킨"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="페리카나">페리카나</option><option value="구어조은닭">구어조은닭</option><option value="교촌치킨">교촌치킨</option><option value="루체치킨">루체치킨</option><option value="소울치킨">소울치킨</option><option value="굽네치킨">굽네치킨</option><option value="치킨매니아">치킨매니아</option><option value="처갓집">처갓집</option><option value="BHC치킨">BHC치킨</option><option value="투게더치킨">투게더치킨</option><option value="못말리는 파닭">못말리는 파닭</option><option value="호식이두마리치킨">호식이두마리치킨</option><option value="맛있는 파닭">맛있는 파닭</option><option value="네네치킨">네네치킨</option><option value="코리엔탈 깻잎치킨">코리엔탈 깻잎치킨</option>';
			$('#resName').append(output1);
		}
		if(selected=="중국집"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="삼호정">삼호정</option><option value="불타는짜장(친친)">불타는짜장(친친)</option><option value="상하이">상하이</option><option value="대동강">대동강</option><option value="만리장성">만리장성</option><option value="짱오야">짱오야</option><option value="효성각">효성각</option><option value="진차이">진차이</option>';
			$('#resName').append(output1);
		}
		if(selected=="피자"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="수타피자">수타피자</option><option value="피자매니">피자매니</option><option value="수피자">수피자</option>';
			$('#resName').append(output1);
		}
		if(selected=="한식/분식"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="그냥밥집">그냥밥집</option><option value="홍대 마약떡볶이">홍대 마약떡볶이</option><option value="BBQ 올떡볶이">BBQ 올떡볶이</option><option value="동대문 엽기떡볶이">동대문 엽기떡볶이</option><option value="김밥나라">김밥나라</option><option value="오봉도시락">오봉도시락</option><option value="서호냉면 굴보쌈">서호냉면 굴보쌈</option><option value="효성각한식">효성각한식</option><option value="동춘냉면">동춘냉면</option><option value="종가집 쌈밥">종가집 쌈밥</option><option value="삼복냉면">삼복냉면</option><option value="지리산 水냉면">지리산 水냉면</option>';
			$('#resName').append(output1);
		}
		if(selected=="족발/보쌈"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="명미가마늘보쌈족발">명미가마늘보쌈족발</option><option value="장충동왕족발보쌈">장충동왕족발보쌈</option><option value="장충할매왕족발보쌈">장충할매왕족발보쌈</option><option value="돈통마늘보쌈">돈통마늘보쌈</option><option value="황제족발보쌈">황제족발보쌈</option><option value="최현숙 족발보쌈">최현숙 왕족발보쌈</option><option value="뚱이네 왕족발">뚱이네 왕족발</option>';
			$('#resName').append(output1);
		}
		if(selected=="찜/탕"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="고추장에 빠진 닭">고추장에 빠진 닭</option><option value="명가안동찜닭">명가안동찜닭</option><option value="안동찜닭">안동찜닭</option><option value="봉달이 찜닭">봉달이 찜닭</option><option value="목포아구찜">목포아구찜</option>';
			$('#resName').append(output1);
		}
		if(selected=="기타"){
			$('#resName').empty();
			var output1='';
			output1+='<option value="선택">선택</option><option value="The큰버거">The큰버거</option><option value="수제돈까스">수제돈까스</option><option value="메차쿠차">메차쿠차</option><option value="100%수제돈까스">100%수제돈까스</option><option value="종로순대곱창볶음">종로순대곱창볶음</option><option value="동대문순대곱창">동대문순대곱창</option><option value="닭발굽는총각">닭발굽는총각</option><option value="호미불닭발">호미불닭발</option>';
			$('#resName').append(output1);
		}
	});
	$('body').on('change', '#resName', function () {
		var selected2 = $('#resName>option:selected').val();
		if(selected2=="선택"){
			$('#menuimage').empty();
		}
		if(selected2=="페리카나"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/페리카나.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="구어조은닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/구어조은닭.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="교촌치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/교촌치킨.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="루체치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/루체치킨.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="소울치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/소울치킨.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="굽네치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/굽네치킨.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="치킨매니아"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/치킨매니아.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="처갓집"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/처갓집.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="BHC치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/BHC치킨.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="투게더치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/투게더치킨.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="못말리는 파닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/못말리는 파닭.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="호식이두마리치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/호식이두마리치킨.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="맛있는 파닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/맛있는 파닭.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="네네치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/네네치킨.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="코리엔탈 깻잎치킨"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/코리엔탈 깻잎치킨.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="삼호정"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/삼호정.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="불타는짜장(친친)"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/불타는짜장(친친).jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="상하이"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/상하이.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="대동강"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/대동강.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="만리장성"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/만리장성.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="짱오야"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/짱오야.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="효성각"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/효성각.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="진차이"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/진차이.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="수타피자"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/수타피자.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="피자매니"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/피자매니.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="수피자"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/수피자.jpg">'
			$('#menuimage').append(output2);
		}
		
		if(selected2=="그냥밥집"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/그냥밥집.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="홍대 마약떡볶이"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/홍대 마약떡볶이.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="BBQ 올떡볶이"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/BBQ 올떡볶이.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="동대문 엽기떡볶이"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/동대문 엽기떡볶이.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="김밥나라"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/김밥나라.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="오봉도시락"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/오봉도시락.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="서호냉면 굴보쌈"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/서호냉면 굴보쌈.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="효성각한식"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/효성각한식.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="동춘냉면"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/동춘냉면.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="종가집 쌈밥"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/종가집쌈밥.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="삼복냉면"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/삼복냉면.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="지리산 水냉면"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/지리산水냉면.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="명미가마늘보쌈족발"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/명미가마늘보쌈족발.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="장충동왕족발보쌈"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/장충동왕족발보쌈.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="장충할매왕족발보쌈"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/장충할매왕족발보쌈.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="돈통마늘보쌈"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/돈통마늘보쌈.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="황제족발보쌈"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/황제족발보쌈.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="최현숙 족발보쌈"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/최현숙 족발보쌈.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="뚱이네 왕족발"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/뚱이네 왕족발.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="고추장에 빠진 닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/고추장에 빠진 닭.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="명가안동찜닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/명가안동찜닭.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="안동찜닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/안동찜닭.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="봉달이 찜닭"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/봉달이찜닭.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="목포아구찜"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/목포아구찜.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="The큰버거"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/The큰버거.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="수제돈까스"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/수제돈까스.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="메차쿠차"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/메차쿠차.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="100%수제돈까스"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/100_수제돈까스.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="종로순대곱창볶음"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/종로순대곱창볶음.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="동대문순대곱창"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/동대문 순대곱창.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="닭발굽는총각"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/닭발굽는총각.jpg">'
			$('#menuimage').append(output2);
		}
		if(selected2=="호미불닭발"){
			$('#menuimage').empty();
			var output2='';
			output2+='<img src="deliver/호미불닭발.jpg">'
			$('#menuimage').append(output2);
		}
	});
});