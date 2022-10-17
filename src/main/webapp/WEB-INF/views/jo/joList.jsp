<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** JoList Spring_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** JoList Spring_MVC2 **</h2>
<br>
<c:if test="${not empty message}">
	${message}<br>
</c:if>
<hr>
<table width=100%> 
	<tr bgcolor="pink" height="30">
		<th>Jno</th><th>Chief</th><th>ChiefName</th><th>Jname</th><th>Note</th>
	</tr>
	<c:if test="${not empty banana}">
		<c:forEach  var="jo" items="${banana}" >
		<tr height="30">
      <td style="text-align: center;">${jo.jno}</td>
			<td style="text-align: center;">${jo.chief}</td>
			<td style="text-align: center;">${jo.name}</td>
			<td style="text-align: center;">
			<c:if test="${!empty loginID}">
				<a href="jdetail?jno=${jo.jno}">${jo.jname}</a>
			</c:if> 
			<c:if test="${empty loginID}">
			    ${jo.jname}
			</c:if>  
			</td>
      <td style="text-align: center;">${jo.note}</td>
		</tr>
		</c:forEach>
	</c:if>
</table>
<hr>
&nbsp;&nbsp;<a href="jinsertf">새로운 조 등록</a>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>