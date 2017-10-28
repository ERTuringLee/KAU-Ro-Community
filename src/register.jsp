<%@ page contentType="text/html;charset=utf-8"%>
<%!
	String UID=null;
	int idCount =0;
%>

<!DOCTYPE html>
<html>
<head>
<title>카우로 회원가입</title>
<link rel="icon" type="image/x-icon" href="icon/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="script/jquery.js"></script>
<script type="text/javascript" src="script/script.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		if($('#id1').val()==""){
			$('#ididid').empty();
			var output="";
			output+='&nbsp;<span style="color:red;">아이디를 입력해주세요</span>'
			$('#ididid').append(output);
		}
		if($('#password1').val()==""){
			$('#pwpwpw').empty();
			var output="";
			output+='&nbsp;<span style="color:red;">비밀번호를 입력해주세요</span>'
			$('#pwpwpw').append(output);
		}
		if($('#password2').val()==$('#password1').val()){
			$('#confirm').empty();
			var output="";
			output+='&nbsp;<span style="color:red;">비밀번호가 맞지않습니다.</span>'
			$('#confirm').append(output);
		}else{
			$('#confirm').empty();
			$('#confirm').append(output);
		}
		if($('#name').val()==""){
				$('#namename').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">이름을 입력해주세요</span>'
				$('#namename').append(output);
		}
		if($('#hakbun').val()==""){
			$('#hakhak').empty();
			var output="";
			output+='&nbsp;<span style="color:red;">학번을 입력해주세요</span>'
			$('#hakhak').append(output);
		}
		if($('#email').val()==""){
				$('#emailemail').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">이메일을 입력해주세요</span>'
				$('#emailemail').append(output);
			}
		$('#id1').keyup(function () {
			$('#ididid').empty();
			if($('#id1').val()==""){
				$('#ididid').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">이름을 입력해주세요</span>'
				$('#ididid').append(output);
			}
		})
		$('#password1').keyup(function () {
			$('#pwpwpw').empty();
			if($('#password1').val()==""){
				$('#pwpwpw').empty();
				var output="";
				output+='<span style="color:red;">비밀번호를 입력해주세요</span>'
				$('#pwpwpw').append(output);
			}else{
				if($('#password1').val().length <=12&&$('#password1').val().length >=6){
					$('#pwpwpw').empty();
				}else{
					$('#pwpwpw').empty();
					var output="";
					output+='<span style="color:red;">6~12자리 이내</span>'
					$('#pwpwpw').append(output);
				}
		
			}
		})
		$('#password2').keyup(function () {
			if($('#password2').val()==$('#password1').val()){
				$('#confirm').empty();
			}else{
				$('#confirm').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">비밀번호가 맞지않습니다.</span>'
				$('#confirm').append(output);
			}
		})
		$('#name').keyup(function () {
			$('#namename').empty();
			if($('#name').val()==""){
				$('#namename').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">이름을 입력해주세요</span>'
				$('#namename').append(output);
			}
		});
		$('#hakbun').keyup(function () {
			$('#hakhak').empty();
			if($('#hakbun').val()==""){
				$('#hakhak').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">학번을 입력해주세요</span>'
				$('#hakhak').append(output);
			}
		});
		$('#email').keyup(function () {
			$('#emailemail').empty();
			if($('#email').val()==""){
				$('#emailemail').empty();
				var output="";
				output+='&nbsp;<span style="color:red;">이메일을 입력해주세요</span>'
				$('#emailemail').append(output);
			}
		});

		$('#frm').submit(function (event) {
			if($('#id1').val()==""){
				alert("ID를 입력해주세요")
				event.preventDefault();
				$('#id1').focus();
			}else if($('#password1').val()==""){
				alert("비밀번호를 입력해주세요")
				event.preventDefault();
				$('#password1').focus();
			}else if($('#password2').val()==""){
				alert("비밀번호 확인을 입력해주세요")
				event.preventDefault();
				$('#password2').focus();
			}else if($('#name').val()==""){
				alert("이름을 입력해주세요")
				event.preventDefault();
				$('#name').focus();
			}else if($('#hakbun').val()==""){
				alert("학번을 입력해주세요")
				event.preventDefault();
				$('#hakbun').focus();
			}else if($('#email').val()==""){
				alert("E-mail를 입력해주세요")
				event.preventDefault();
				$('#email').focus();
			}else if($('#password1').val().length >12||$('#password1').val().length <6){
				alert("비밀번호는 6~12자리 이내")
				event.preventDefault();
				$('#password1').focus();
			}else if($('input:checkbox[id="hams"]').is(":checked")==false){
				alert("중복확인바람")
				event.preventDefault();
			}
		})


		
	})
</script>
</head>

<body>
	<div id="page-wrapper">
		<%@ include file="format/head-format.jsp"%>
		<div id="content">
			<div id ="left-section">
				<h1>회원정보 입력</h1>
				<hr />
				<br />
				<div id="table-div" align="center">
					<form id="frm" name="frm" action="registerProcess.jsp" method="post">
						<table border="1" style="border-collapse: collapse;">
							<tr>
								
							<%
								if(request.getParameter("id")==null){


							%>
								<td>아이디</td>
								<td><input id="id1" type="text" name="id" size="10">&nbsp;&nbsp;<input type="button" id="idconfirm" value="중복확인" ><div id="ididid" style="display:inline;"></div><input hidden type="checkbox" id="hams"></td>
							<%
								}else{
									Statement stmt2 = conn.createStatement();
									String query2 = "SELECT count(*) AS recordCount2 FROM member WHERE id='"+request.getParameter("id")+"'";
									try{
										ResultSet rs2 = stmt2.executeQuery(query2);
   										while(rs2.next()){
   										int recordCount2 = rs2.getInt("recordCount2");
   										if(recordCount2 != 1) {
   										if(request.getParameter("id")!=""){
   										out.print("<script>alert('사용가능한 ID')</script>");
   							%>
   								<td>아이디</td>
								<td><input id="id1" type="text" name="id" size="10" value='<%=request.getParameter("id")%>'>&nbsp;&nbsp;<input type="button" id="idconfirm" value="중복확인" ><div id="ididid" style="display:inline;"></div></div><input type="checkbox" id="hams" hidden checked></td>
							<%
										}else{
							%>
   								<td>아이디</td>
								<td><input id="id1" type="text" name="id" size="10" value='<%=request.getParameter("id")%>'>&nbsp;&nbsp;<input type="button" id="idconfirm" value="중복확인" ><div id="ididid" style="display:inline;"></div></div><input type="checkbox" id="hams" hidden ></td>
							<%
										}
   										}else{
   										out.print("<script>alert('중복된 ID')</script>");
   							%>
   								<td>아이디</td>
								<td><input id="id1" type="text" name="id" size="10">&nbsp;&nbsp;<input type="button" id="idconfirm" value="중복확인" ><div id="ididid" style="display:inline;"></div></div><input type="checkbox" id="hams" hidden></td>
							<%		
   										
   										}
   									}
	   								}catch(SQLException e){
							   			out.println(e.getMessage());
							   		}
							
								}
							%>
							<script type="text/javascript">
							$(document).ready(function () {
								$('#idconfirm').click(function () {
									location.href = 'register.jsp?id='+$('#id1').val();
								})
							})

							</script>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" id="password1" NAME="pass1" SIZE="13"><div style="display:inline;" id="pwpwpw"></div></td>
							</tr>
							<tr>
								<td>비밀번호 확인</td>
								<td><input type="password" id="password2" NAME="pass2" SIZE="13"><div style="display:inline;" id="confirm"></div></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input id="name" type="text" NAME="name" SIZE="8" ><div style="display:inline;" id="namename"></div></td>
							</tr>
							<tr>
								<td>닉네임</td>
								<td><input id="nick" type="text" NAME="nick" SIZE="10"></div></td>
							</tr>
							<tr>
								<td>학번</td>
								<td><input id="hakbun" type="text" NAME="hakbun" SIZE="10"><div style="display:inline;" id="hakhak"></div></td>
							</tr>
							<tr>
								<td>E-mail</td>
								<td><input id="email" type="text" NAME="email" SIZE="15"><div style="display:inline;" id="emailemail"></div></td>
							</tr>
							<tr>
								<td>학과</td>
								<td><select NAME="major">
										<option value="항공전자정보공학부">항공전자정보공학부</option>
										<option value="소프트웨어학과">소프트웨어학과</option>
										<option value="항공우주 및 기계공학부">항공우주 및 기계공학부</option>
										<option value="항공재료공학과">항공재료공학과</option>
										<option value="항공·교통·물류학부">항공·교통·물류학부</option>
										<option value="항공운항학과">항공운항학과</option>
										<option value="경영학부">경영학부</option>
								</select></td>
							</tr>
							<tr>
								<td>성별</td>
								<td><input type="radio" NAME="gender" VALUE="남자" CHECKED>남자&nbsp;&nbsp;
									<input type="radio" NAME="gender" VALUE="여자">여자</td>
							</tr>
							
							<tr>
								<td>자기 소개하는 글</td>
								<td><textarea ROWS="7" COLS="60" NAME="intro" placeholder="Welcome! Introduce Yourself~"></textarea></td>
							</tr>
							<tr>
								<td>비공개</td>
								<td><input type="checkbox" name="nonpub"></td>
							</tr>
							<tr>
								<td COLSPAN="2" ALIGN="center"><input type="submit" VALUE="등록하기">&nbsp;&nbsp; <input type="button" VALUE="취소하기" onclick="location.href='/jspbook/LEE-LIM'"></td>
							</tr>
							
						</table>
					</form>
					<br />
				</div>
			</div>
			<div id="right-section">
				<%@ include file="format/information-right-format.jsp"%>
				<%@ include file="format/right-format.jsp"%>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp"%>
	</div>
	<%@ include file="format/footer-format.jsp"%>


</body>
</html>
