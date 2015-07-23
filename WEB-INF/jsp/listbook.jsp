<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'listbook.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body  style="text-align:center">
  
  <h1>书籍列表</h1>
   		<table   style="text-align:center;" width="70%" border="1" align="center">
  				<tr>
  						<td>书名</td>
  						<td>作者</td>
  						<td>售价</td>
  						<td>描述</td>
  						<td>操作</td>
  				</tr>
  				
  				
  					<c:forEach var="entry" items="${ map}">
								<tr>
			  						<td>${entry.value.name }</td>
		  							<td>${entry.value.author }</td>
			  						<td>${entry.value.price }</td>
		  							<td>${entry.value.description }</td>
		  							<td>
		  									<a href="${pageContext.request.contextPath}/servlet/BusyServlet?id=${entry.key}" target="_blank">购买</a>
		  							</td>
	  						</tr>
  					</c:forEach>
  				

   		</table>
  </body>
</html>
