<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ����</title>
</head>
<body>

<%
	
	//�α׾ƿ� Ŭ���� �Ķ���͸� ���ؼ� �α� �ƿ����� ���� Ȯ��
	String logout = request.getParameter("logout");

	if(logout != null) {
		
		session.setAttribute("id", null);
		session.setAttribute("pass", null);
		
		//��� ���� ���� �ð��� ���̼���.
		session.setMaxInactiveInterval(0);
		
	}
	
	//������ ���Ͽ� ���̵� �о�帲
	String id = (String) session.getAttribute("id"); 

	//�α����� �Ǿ����� ������ session ���� null ó�� ����
	if(id == null) {
		id="�մ�";
	}
%>
	<table width="800">
		<tr height="100">
			<td colspan="2" align="center" width="200">
			<img alt="������" src="img/sport.jpg" width="200" height="70">
			</td>
			<td colspan="5" align="center">
			<font size="10">������</font>
			</td>
		</tr>
		<tr height="50">
			<td width="100" align="center">�౸</td>
			<td width="100" align="center">�߱�</td>
			<td width="100" align="center">�豸</td>
			<td width="100" align="center">Ź��</td>
			<td width="100" align="center">�״Ͻ�</td>
			<td width="100" align="center">����</td>
			<td width="200" align="center">
		<%
			if(id.equals("�մ�")) {		
		%>
			<%=id%> ��<button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">�α���</button></td>
		<%
			} else {
		%>	
			<%=id%> ��<button onclick="location.href='SessionMain.jsp?logout=logout'">�α׾ƿ�</button>
		<%
			}
		%>
			</td>
		</tr>
	</table>
</body>
</html>