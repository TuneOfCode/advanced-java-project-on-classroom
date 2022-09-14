<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common.css" />
	<title>Bảng Cửu Chương</title>
</head>
<body>
	<% 
	   final int MIN = 2;
	   final int MAX = 10;
	%>
	<h1 class="title">Bảng cửu chương</h1>
	<table>
			<tr>
				<%for(int i=MIN; i<=MAX-1; i++) {%>
					<th>Bảng <%=i %></th>
				<%} %>
			</tr>
			<%for(int i=MIN-1; i<=MAX; i++) {%>
				<tr>
					<%for(int j=MIN; j<=MAX-1; j++){ %>
						<td><%=j %> x <%=i %> = <%=i*j %></td>
					<%} %>
				</tr>
			<%} %>
	</table>
</body>
</html>