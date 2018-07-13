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
	<form class="form-inline"  id="addFoodForm">
	  <div id="foodDiv">
	    <table align="center" id="foodTable">
		    <tr>
				<td>食物名称：</td>
				<td><input type="text" class="form-control" name="listFood[0].foodname" placeholder="请输入名称" style="width: 200px"></td>
			</tr>
			<tr>
				<td><label>食物类型：</label></td>
				<td>
				   <select  name="listFood[0].foodtype"  class="form-control">
					      <option value="">请选择</option>
						  <option value="1">食品</option>
						  <option value="2">饮品</option>
						  <option value="3">药品</option>
						  <option value="3">毒品</option>
					</select>
				   
				</td>
			</tr>
			<tr>
				<td>食物价格：</td>
				<td><input type="text" class="form-control" name="listFood[0].foodprice" placeholder="请输入价格" style="width: 200px"></td>
			</tr>
			<tr>
				<td>食物介绍：</td>
				<td><textarea  class="form-control" name="listFood[0].foodcontent" placeholder="请输入介绍" style="width: 200px"></textarea></td>
			</tr>
			<tr>
			   <td>食物时间</td>
			    <td>
			        <input type="text"  class="form-control" name="listFood[0].fooddate" id="fooddate" placeholder="请输入时间" style="width:200px;">
			    </td>
			</tr>
		</table>
	  </div>
	</form>
	<button type="button" onclick="sss()" class="btn btn-success">▼</button>
<script type="text/javascript">
var i=0;
function queryAdd(ad){
	$("[name='listFood["+ad+"].fooddate']").datetimepicker({
        format: 'yyyy-mm-dd' 
    });
	
}

$(function(){
	queryAdd(0);
})

function sss(){
	   i++;
		$("#foodDiv").append('<br>'+
				'<table align="center" id="foodTable'+ i +'" >'+
				'<tr>'+
					'<td>食物名称：</td>'+
					'<td><input type="text" class="form-control" name="listFood[0].foodname" placeholder="请输入名称" style="width: 200px"></td>'+
				'</tr>'+
				'<tr>'+
					'<td><label>食物类型：</label></td>'+
					'<td>'+
					   '<select  name="listFood[0].foodtype"  class="form-control">'+
						      '<option value="">请选择</option>'+
							  '<option value="1">食品</option>'+
							  '<option value="2">饮品</option>'+
							  '<option value="3">药品</option>'+
							  '<option value="3">毒品</option>'+
						'</select>'+
					'</td>'+
				'</tr>'+
				'<tr>'+
					'<td>食物价格：</td>'+
					'<td><input type="text" class="form-control" name="listFood[0].foodprice" placeholder="请输入价格" style="width: 200px"></td>'+
				'</tr>'+
				'<tr>'+
					'<td>食物介绍：</td>'+
					'<td><textarea  class="form-control"  name="listFood[0].foodcontent" placeholder="请输入介绍" style="width: 200px"></textarea></td>'+
				'</tr>'+
				'<tr>'+
				   '<td>食物时间</td>'+
				    '<td>'+
				       ' <input type="text"  class="form-control" name="listFood[0].fooddate" id="fooddate" placeholder="请输入时间" style="width:200px;">'+
				    '</td>'+
				'</tr>'+
				'<tr>'+
			       '<td>'+
			     '<button type="button" onclick="deleteAreaForm('+i+')" class="btn btn-warning">▲</button>'+
			       '</td>'+
			     '</tr>'+
		       '</table>'
		       );
		queryAdd(i);
	}
function deleteAreaForm(id){
	var fid="#foodTable" +id;
	$(fid).remove();
}


</script>
</body>
</html>