<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>세션 예제</title>
</head>
<body>

<%
	
	//로그아웃 클릭시 파라미터를 통해서 로그 아웃인지 여부 확인
	String logout = request.getParameter("logout");

	if(logout != null) {
		
		session.setAttribute("id", null);
		session.setAttribute("pass", null);
		
		//즉시 세션 유지 시간을 죽이세요.
		session.setMaxInactiveInterval(0);
		
	}
	
	//세션을 통하여 아이디를 읽어드림
	String id = (String) session.getAttribute("id"); 

	//로그인이 되어있지 않으면 session 값이 null 처리 해줌
	if(id == null) {
		id="손님";
	}
%>
	<table width="800">
		<tr height="100">
			<td colspan="2" align="center" width="200">
			<img alt="스포츠" src="img/sport.jpg" width="200" height="70">
			</td>
			<td colspan="5" align="center">
			<font size="10">스포츠</font>
			</td>
		</tr>
		<tr height="50">
			<td width="100" align="center">축구</td>
			<td width="100" align="center">야구</td>
			<td width="100" align="center">배구</td>
			<td width="100" align="center">탁구</td>
			<td width="100" align="center">테니스</td>
			<td width="100" align="center">골프</td>
			<td width="200" align="center">
		<%
			if(id.equals("손님")) {		
		%>
			<%=id%> 님<button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button></td>
		<%
			} else {
		%>	
			<%=id%> 님<button onclick="location.href='SessionMain.jsp?logout=logout'">로그아웃</button>
		<%
			}
		%>
			</td>
		</tr>
	</table>
</body>
</html>