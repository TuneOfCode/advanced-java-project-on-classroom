<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculator</title>
</head>
<style>
	h2 {
		text-align: center;
		text-transform: capitalize;
	}
	#num1, #num2, #result {
		margin: 5px 0;
	}
	.calc {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		height: 80vh;
	}
	.btn {
		padding: 3px;
		margin: 2px;
		width: 40px;
		height: 40px;
		font-size: 22px;
	}
</style>
<body>
	<h2>Máy tính</h2>
	<form class="calc" action="Calculator.jsp" method="post">
		<div id="num1">
			<label for="num1">Số thứ nhất</label>
			<input type="number" step="0.1" name="num1" />
		</div>
		<div id="num2">
			<label for="num2">Số thứ hai</label>
			<input type="number" step="0.1" name="num2" />
		</div>
		<div id="result">
			<%
				String num1String = request.getParameter("num1");
				String num2String = request.getParameter("num2");
				String addString = request.getParameter("+");
				String subString = request.getParameter("-");
				String multiString = request.getParameter("x");
				String divString = request.getParameter("/");
				
				if (num1String != null && num2String != null && 
						!num1String.equals("") && !num2String.equals("")) {
					if (addString != null) {
						out.println(
								"<p>" 
									+ Float.parseFloat(num1String) + addString 
									+ Float.parseFloat(num2String) + " = " 
									+ "<b>" + 
									(Float.parseFloat(num1String) + Float.parseFloat(num2String)) 
									+ "</b>" +
								"</p>"
						);
					} else if (subString != null) {
						out.println(
								"<p>" 
									+ Float.parseFloat(num1String) + subString 
									+ Float.parseFloat(num2String) + " = " 
									+ "<b>" + 
									(Float.parseFloat(num1String) - Float.parseFloat(num2String)) 
									+ "</b>" +
								"</p>"
						);
					}
					else if (multiString != null) {
						out.println(
								"<p>" 
									+ Float.parseFloat(num1String) + multiString 
									+ Float.parseFloat(num2String) + " = " 
									+ "<b>" + 
									(Float.parseFloat(num1String) * Float.parseFloat(num2String)) 
									+ "</b>" +
								"</p>"
						);
					}
					else if (divString != null) {
						out.println(
								"<p>" 
									+ Float.parseFloat(num1String) + divString 
									+ Float.parseFloat(num2String) + " = " 
									+ "<b>" + 
										(Float.parseFloat(num1String) / Float.parseFloat(num2String)) 
									+ "</b>" +
								"</p>"
						);
					}
				} else {
					out.println("<b>Lưu ý: vui lòng nhập đầy đủ 2 số.</b>");
				}
			%>
		</div>
		<div id="action">
			<input class="btn" type="submit" value="+" name="+" />
			<input class="btn" type="submit" value="-" name="-"/>
			<input class="btn" type="submit" value="x" name="x"/>
			<input class="btn" type="submit" value="/" name="/"/>
		</div>
	</form>
</body>
</html>