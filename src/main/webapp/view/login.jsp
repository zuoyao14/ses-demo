<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="whole" class="whole">
	<div id="header" class="header" style="height: 75px;width: 1200px;border:1px;"></div>
	<div id="content" class="content">
		<div id="advert" class="advert"></div>
		<div id="login" class="login">
			<form action="${pageContext.request.contextPath}/servlet/DoFormServlet" method="post">
		        <%--使用隐藏域存储生成的token--%>
		        <%--<input type="hidden" name="token" value="<%=session.getAttribute("token") %>">--%>
		        <%--使用EL表达式取出存储在session中的token--%>
		        	<input type="hidden" name="token" value="${token}"/> 
				用户名：<input type="text" name="username">
		        	<input type="submit" value="提交">
		     </form>		
		</div>
	</div>
	<div id="footer" class="footer"></div>
</div>
</body>
</html>