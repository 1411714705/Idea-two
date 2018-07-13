<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="form-inline" id="updateFoodForm">
<input type="hidden" name="foodid" value="${food.foodid }" >
	<table align="center" id="foodTable">
		    <tr>
				<td>食物名称：</td>
				<td><input type="text" class="form-control" name="foodname"  value="${food.foodname }" style="width: 200px"></td>
			</tr>
			<tr>
				<td><label>食物类型：</label></td>
				<td>
				   <select  name="foodtype" class="form-control">
					      <option value="">请选择</option>
						  <option value="1" ${food.foodtype==1?"selected":""} >食品</option>
						  <option value="2" ${food.foodtype==2?"selected":""} >饮品</option>
						  <option value="3" ${food.foodtype==3?"selected":""} >药品</option>
						  <option value="3" ${food.foodtype==4?"selected":""} >毒品</option>
					</select>
				   
				</td>
			</tr>
			<tr>
				<td>食物价格：</td>
				<td><input type="text" class="form-control" name="foodprice"  value="${food.foodprice }"  style="width: 200px"></td>
			</tr>
			<tr>
				<td>食物介绍：</td>
				<td><textarea rows="5" cols="25" class="form-control" name="foodcontent" placeholder="请输入介绍"  >${food.foodcontent }</textarea></td>
			</tr>
			<tr>
			   <td>食物时间</td>
			    <td>
			        <input type="text"  class="form-control" name="fooddate"  value="${food.fooddate }"  id="fooddate"  style="width:200px;">
			    </td>
			</tr>
		</table>
</form>
<script type="text/javascript">
$(function(){
	$("[name='fooddate']").datetimepicker({
        format: 'yyyy-mm-dd' 
    });
})
</script>
</body>
</html>