
$(document).ready(function () {
	$('#activity-select').change(function () {
		var selected = $('#activity-select>option:selected').val();
		if(selected=="선택"){
			$('#activity-club').empty();
			var output1='';
			output1+='<br/><br/>';
			$('#activity-club').append(output1);
		}
		if(selected=="한나래 방송국"){
			$('#activity-club').empty();
			var output1 ='';
			output1+='<img src="images/broad.gif">&nbsp;';
			output1+='<img src="images/broad2.png">';
			output1+='<video width="640" height="480" controls autoplay>';
			output1+='<source src="video/broad4.mp4" type="video/mp4">'
			output1+='</video>';
			$('#activity-club').append(output1);
		}
		if(selected=="NCDS"){
			$('#activity-club').empty();
			var output1 ='';
			output1+='<img src="images/NCDS.png">';
			$('#activity-club').append(output1);
		}
		if(selected=="래피릿츠"){
			$('#activity-club').empty();
			var output1 ='';
			output1+='<br />'
			output1+='<img src="images/래피릿츠.png">';
			$('#activity-club').append(output1);
		}
		if(selected=="신문사"){
			$('#activity-club').empty();
			var output1 ='';
			output1+='<br />'
			output1+='<img src="images/news.gif">&nbsp;';
			output1+='<img src="images/news2.gif"><br />';
			output1+='<img src="images/news.png">';
			$('#activity-club').append(output1);
		}
		if(selected=="ESC"){
			$('#activity-club').empty();
			var output1 ='';
			output1+='<br />'
			output1+='<img src="images/ESC.png">';
			$('#activity-club').append(output1);
		}
	})
});
