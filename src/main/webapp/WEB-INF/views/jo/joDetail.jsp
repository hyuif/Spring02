<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** JoDetail Spring_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** JoDetail Spring_MVC2 **</h2>
${jojo.jname}<br>
${message}
<hr>
<c:if test="${not empty jojo}"> 
	<table>
		<tr height="40"><td bgcolor="lavender">Jno</td><td>${jojo.jno}</td></tr>
		<tr height="40"><td bgcolor="lavender">Chief</td><td>${jojo.chief}</td></tr>
		<tr height="40"><td bgcolor="lavender">Jname</td><td>${jojo.jname}</td></tr>
		<tr height="40"><td bgcolor="lavender">Note</td><td>${jojo.note}</td></tr>
	</table>
</c:if>
<c:if test="${empty jojo}">
<hr>
${message}<br>
</c:if>
<hr>
<table width=100%> 
	<tr bgcolor="pink" height="30">
		<th>I D</th><th>Password</th><th>Name</th><th>Info</th><th>Birthday</th><th>Jno</th><th>Age</th><th>Point</th>
	</tr>
	<c:if test="${not empty banana}">
		<c:forEach  var="member" items="${banana}" >
		<tr height="30">
			<td>
			<c:if test="${loginID=='admin'}">
				<a href="mdetail?id=${member.id}">${member.id}</a>
			</c:if> 
			<c:if test="${loginID!='admin'}">
			    ${member.id}
			</c:if>      
			</td>
			<td>${member.password}</td><td>${member.name}</td>
			<td>${member.info}</td><td>${member.birthday}</td>
			<td>${member.jno}</td><td>${member.age}</td><td>${member.point}</td>
		</tr>	
		</c:forEach>
	</c:if>
</table>

&nbsp;&nbsp;<a href="jdetail?jCode=U&jno=${jojo.jno}">[조수정]</a>
<!-- memberList 에서 요청한 경우는 session 에 보관된 id로는 수정 할 수 없기때문에 parameter로 처리함  -->
&nbsp;&nbsp;<a href="jdelete?jno=${jojo.jno}">[조삭제]</a><br>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>