<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 删除评价
<script type="text/javascript">
	function userDelete(userId) {
		if(confirm("您确定要删除这个中介吗？")) {
			window.location="userList?action=delete&userId="+userId;
		}
	}
	
	$(document).ready(function(){
		$("ul li:eq(1)").addClass("active");
	});
</script> -->
<div class="data_list">
		<div class="data_list_title">
		全部评价
		</div>
		<form name="myForm" class="form-search" method="post">
		<!-- <form name="myForm" class="form-search" method="post" action="assessList?action=search"> -->
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'黄云贞'}'">黄云贞</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'蔺芳'}'">蔺芳</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'李海兰'}'">李海兰</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'刘蒙'}'">刘蒙</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'路蕊'}'">路蕊</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'薛康'}'">薛康</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'闫娇楠'}'">闫娇楠</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'张晨雪'}'">张晨雪</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'朱俊盈'}'">朱俊盈</button>
				<button class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='assessList?action=assessPreSave&managerName=${'张习霞'}'">张习霞</button>
				<%-- <span class="data_search">
					<select id="searchType" name="searchType" style="width: 100px;">
					<option value="userPhone" ${searchType eq "userPhone"?'selected':'' }>顾客手机号</option>
					</select>
					&nbsp;<input id="assessManagerText" name="assessManagerText" type="text"  style="width:120px;height: 30px;" class="input-medium search-query" value="${assessManagerText }">
					&nbsp;<button type="submit" class="btn btn-info" onkeydown="if(event.keyCode==13) myForm.submit()">搜索</button>
				</span> --%>
		</form>
		<div>
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>编号</th>
					<th>id</th>
					<th>顾客手机号</th>
					<th>姓名</th>
					<th>总体满意度评分</th>
					<th>置业顾问满意度评分</th>
					<th>满意地方</th>
					<th>需要提升的地方</th>
					<th>其他想说的</th>
					<th>评价时间</th>
				</tr>
				<c:forEach  varStatus="i" var="assess" items="${assessList }">
					<tr>
						<td>${i.count+(page-1)*pageSize }</td>
						<td>${assess.assessId }</td>
						<td>${assess.userPhone }</td>
						<td>${assess.managerName }</td>
						<td>${assess.num1 }</td>
						<td>${assess.num2 }</td>
						<td>${assess.assess1 }</td>
						<td>${assess.assess2 }</td>
						<td>${assess.assessOthers }</td>
						<td>${assess.createTime }</td>
						<td><button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='assessList?action=assessSave&assessId=${assess.assessId }'">详情</button>&nbsp;</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div align="center"><font color="red">${error }</font></div>
		<div class="pagination pagination-centered">
			<ul>
				${pageCode }
			</ul>
		</div>
</div>