<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** Board Update Spring_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** Board Update Spring_MVC2 **</h2>
<hr>
<form action="jupdate" method="Post">
	<table>
		<tr height="40"><td bgcolor="MistyRose">Jno</td>
			<td><input type="text" name="jno" value="${jojo.jno}" size="20" readonly></td></tr>
								<!-- 서버에서 필요한 정보 -->
		<tr height="40"><td bgcolor="MistyRose">Chief</td>
			<td><input type="text" name="chief" value="${jojo.chief}" size="20"></td></tr>
		<tr height="40"><td bgcolor="MistyRose">Jname</td> 
			<td><input type="text" name="jname" value="${jojo.jname}"></td></tr>
								<!-- 서버에서 필요한 정보 -->
		<tr height="40"><td bgcolor="MistyRose">Note</td>
			<td><input type="text" name="note" value="${jojo.note}"></input></td>
								<!-- 서버에서 필요한 정보 -->
		</tr>
			<td><input type="submit" value="조수정">&nbsp;&nbsp;
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>	
<c:if test="${not empty message}">
<hr>
${message}<br>
</c:if>
<hr>
<c:if test="${loginID==apple.id || loginID=='admin'}">
	&nbsp;&nbsp;<a href="jdelete?jno=${jojo.jno}">[조삭제]</a>
</c:if>
&nbsp;&nbsp;<a href="jlist">JoList</a>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>