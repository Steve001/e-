<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	function checkForm(){
		var userName=document.getElementById("userName").value;
		var password=document.getElementById("userPassword").value;
		var jigou=document.getElementById("userJigou").value;
		var userPhone=document.getElementById("userPhone").value;
		if(userName==""||userPassword==""||jigou==""||userPhone==""){
			document.getElementById("error").innerHTML="信息填写不完整！";
			return false;
		} 
		return true;
	}
	
	$(document).ready(function(){
		$("ul li:eq(1)").addClass("active");
	});
</script>
<div class="data_list">
		<div class="data_list_title">
		<c:choose>
			<c:when test="${assess.assessId!=null }">
				修改中介信息
			</c:when>
			<c:otherwise>
				评价详情
			</c:otherwise>
		</c:choose>
		</div>
		
		<div class="data_form" >
				<input type="hidden" id="assessId" name="assessId" value="${assess.assessId }"/>
					<table align="center">
					
						<tr>
							<td><font color="red">*</font>id：</td>
							<td>${assess.assessId }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>顾客手机号：</td>
							<td>${assess.userPhone }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>姓名：</td>
							<td>${assess.managerName }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>总体满意度评分：</td>
							<td>${assess.num1 }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>置业顾问满意度评分：</td>
							<td>${assess.num2 }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>满意地方：</td>
							<td>${assess.assess1 }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>需要提升的地方：</td>
							<td>${assess.assess2 }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>其他想说的：</td>
							<td>${assess.assessOthers }</td>
						</tr>
						<tr>
							<td><font color="red">*</font>评价时间：</td>
							<td>${assess.createTime }</td>
						</tr>
						
					</table>
					<div align="center">
						&nbsp;<button class="btn btn-primary" type="button" onclick="javascript:history.back()">返回</button>
					</div>
					<div align="center">
						<font id="error" color="red">${error }</font>
					</div>
			</div>
		<div align="center"><font color="red">${error }</font></div>
		<div class="pagination pagination-centered">
			<ul>
				${pageCode }
			</ul>
		</div>
		
</div>