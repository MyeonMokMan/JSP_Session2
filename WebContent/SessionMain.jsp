<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>세션 응용</title>
</head>
<body>

<%
	//center.jsp 값을 변경해주기 위해서 request 객체를 이용하여 center 값을 받아옴
	String center = request.getParameter("center");

	//처음 SessionMain.jsp를 실행하면 center는 null 실행되기에 null 처리를 해준다.
	if(center == null) {
		center = "Center.jsp";
	}

%>

<center>
	<table border="1">
	<tr>
		<td align="center" colspan="2">
			<jsp:include page="Top.jsp" />
		</td>
	</tr>
	
	<tr height="400">
		<td align="center" width="200">
		<jsp:include page="Left.jsp"/>
		</td>
		
		<td align="center" width="600">
		<jsp:include page="<%=center%>"/>
		</td>
	</tr>
	
	<tr height="100">
		<td align="center" colspan="2">
		<jsp:include page="Bottom.jsp"/>
		</td>
	</tr>
	</table>
</center>
</body>
</html>