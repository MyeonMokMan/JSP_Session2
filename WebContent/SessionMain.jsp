<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ����</title>
</head>
<body>

<%
	//center.jsp ���� �������ֱ� ���ؼ� request ��ü�� �̿��Ͽ� center ���� �޾ƿ�
	String center = request.getParameter("center");

	//ó�� SessionMain.jsp�� �����ϸ� center�� null ����Ǳ⿡ null ó���� ���ش�.
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