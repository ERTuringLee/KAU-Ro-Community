<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<script type="text/javascript" src="script/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		var song = new Array(5);
		song[0] = 'music/reason.mp3'
		song[1] = 'music/BattleField.mp3'
		song[2] = 'music/Battlefield4.mp3'
 		song[3] = 'music/오로나민C.mp3'
 		song[4] = 'music/경찰청사람들.mp3'
		index = Math.floor(Math.random() * song.length);
		$('#music').empty();
		var output="";
		output+='<audio controls="controls" autoplay="true" loop="loop">';
		output+='<source src="'+song[index]+'" type="audio/mp3">'
		output+='</audio>'
		$('#music').append(output);
			
	})
</script>

<%!
	int total_visit=0;
	int id= 0;
	String NickName = null;
	String UserId = null;
	boolean isLogin = false;
%>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs =null;
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
	}catch(ClassNotFoundException e){
		out.println(e.getMessage()+"<br>");
	}
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
		st = conn.createStatement();
		rs = st.executeQuery("select * from total_visit");
		while(rs.next()){
			total_visit = rs.getInt("visit");
			id=rs.getInt("id");
		}
		total_visit = total_visit+1;
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	
%>
<div align="left" class="green-class">
			<a href="/jspbook/LEE-LIM/">KAU路-한국항공대학교 커뮤니티</a>&nbsp;&nbsp;|
			<%
				NickName = (String)session.getAttribute("MasterLoginNickname");
				UserId = (String)session.getAttribute("MasterLoginID");
				if (UserId != null) {
					isLogin = true; 
				}
				if(isLogin){
				String URL = (String)request.getRequestURI();
				
			%>
				<span style="position:relative;left:10px" id="inputform">
					<form style="display:inline;" action="logout.jsp">
						<%=NickName%>님 안녕하세요?
						<input type="text" hidden value=<%=URL%> name="url">
						&nbsp;<input type="submit" value="로그아웃" id="logoutButton" style="background-color:#BBBBBB;border-radius:5px;" >
						&nbsp;&nbsp;|
						<a href="MyPage.jsp" id="MyPage">내 정보</a>&nbsp;&nbsp;
					</form>
				</span>
				
			<%
				}else{
				String URL = (String)request.getRequestURI();
			%>
			<span style="position:relative;left:10px" id="inputform">
				<form style="display:inline;" action="loginProcess.jsp" method="post">
					<input type="text" hidden value=<%=URL%> name="url">
					ID: <input type = "text" id="idField" name="id" style="width:100px;">&nbsp;&nbsp;
					Password: <input type = "password" id="passwordField" name="passwd" style="width:100px;" >
					&nbsp;<input type="submit" value="로그인" id="loginButton" style="background-color:#BBBBBB;border-radius:5px;">
					&nbsp;&nbsp;|
				</form>
				<a href="register.jsp" id="register">회원가입</a>&nbsp;&nbsp;
				<a href="found.jsp" id="id&passwd">ID/비밀번호 찾기</a>
			</span>
			<%
				}
			%>
			<script>
					$(document).ready(function () {
						$('body').on('click', '#logoutButton', function (event) {
							<%
								isLogin=false;
							%>
						})
						$('body').on('click', '#loginButton', function (event) {
							if($('#idField').val()==""){
								alert('아이디를 입력하시오.');
								event.preventDefault();
							}else if($('#passwordField').val()==""){
								alert('비밀번호를 입력하시오.');
								event.preventDefault();
							}
						})
					});
				</script>
		</div>
		<header id="main-header">
			<hr style="color:#AAAAAA;border-style:dashed;width:100%;" />
			<a href="/jspbook/LEE-LIM/"><img src="images/logo.png"></a>
			&nbsp;<span id="music"></span>
		</header>
		<nav id = "main-navigation">
			<div class="pull-left">
				<ul class="outer-menu" style> 
	                <li> 
	                    <a href="community.jsp">커뮤니티</a> 
	                    <ul class="inner-menu"> 
	                        <li><a href="community.jsp">베스트 글</a></li> 
	                        <li><a href="free.jsp">자유게시판</a></li>
	                        <li><a href="image.jsp">짤방</a></li>
	                    </ul> 
	                </li> 
	            </ul>
	             <ul class="outer-menu"> 
	                <li> 
	                    <a href="wiki.jsp">학교정보</a>
	                    <ul class="inner-menu"> 
	                        <li><a href="wiki.jsp">전공정보</a></li>
	                        <li><a href="def.jsp">동아리정보</a></li>
	                    </ul> 
	                </li> 
	            </ul> 
	            <ul class="outer-menu"> 
	                <li> 
	                    <a href="world.jsp">KAU World</a>
	                </li> 
	            </ul> 
	            <ul class="outer-menu"> 
	                <li> 
	                    <a href="information.jsp">생활정보</a> 
	                    <ul class="inner-menu"> 
	                        <li><a href="information.jsp">식당 식단표</a></li> 
	                        <li><a href="deliver.jsp">배달음식</a></li> 
	                        <li><a href="secondhand.jsp">중고거래</a></li> 
	                        <li><a href="homestay.jsp">자취&하숙</a></li>

	                    </ul> 
	                </li> 
	            </ul> 
				<ul class="outer-menu"> 
	                <li> 
	                    <a href="KAU.jsp">링크</a> 
	                    <ul class="inner-menu"> 
	                        <li><a style="cursor:pointer;" onclick="window.open('http://www.kau.ac.kr');">KAU 홈페이지</a></li> 
	                        <li><a style="cursor:pointer;" onclick="window.open('https://www.kau.ac.kr/page/login.jsp?ppage=&target_page=act_Portal_Check.jsp@chk1-1');">종합정보시스템</a></li> 
	                        <li><a style="cursor:pointer;" onclick="window.open('http://su.kau.ac.kr/sugang/index.su');">수강신청</a></li>
	                        <li><a style="cursor:pointer;" onclick="window.open('http://time.navyism.com/?host=su.kau.ac.kr');">서버시간</a></li>
	                        <li><a style="cursor:pointer;" onclick="window.open('http://abeek.kau.ac.kr/kauabeek/index.do');">공학인증</a></li>
	                        <li><a style="cursor:pointer;" onclick="window.open('http://lms.kau.ac.kr/');">LMS</a></li>
	                        <li><a style="cursor:pointer;" onclick="window.open('http://lib.kau.ac.kr/');">중앙도서관</a></li>
	                        <li><a style="cursor:pointer;" onclick="window.open('http://locker.kau.ac.kr/');">사물함 신청</a></li>
	                    </ul> 
	                </li> 
	            </ul>
	            <ul class="outer-menu"> 
	                <li> 
	                    <a href="developer.jsp">KAU路</a> 
	                    <ul class="inner-menu"> 
	                        <li><a href="developer.jsp">개발자정보</a></li>
	                        <li><a href="notice.jsp">공지사항</a></li> 
	                        <li><a href="qna.jsp">문의사항</a></li> 
	                    </ul> 
	                </li> 
	            </ul>
			</div>
		</nav>