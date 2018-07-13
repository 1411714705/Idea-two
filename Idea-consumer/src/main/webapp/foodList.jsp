<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/link/link.jsp" %>
</head>
<body>
<button class="btn btn-primary" data-toggle="modal" onclick='addFood()' >
        <span class="glyphicon glyphicon-plus"  style="text-shadow: black 5px 3px 3px;"></span>  新增
</button>
<button class="btn btn-danger" data-toggle="modal" onclick='deleAllFood()' >
        <span class="glyphicon glyphicon-minus"  style="text-shadow: black 5px 3px 3px;"></span>  批量删除
</button>
<div id="cha">
	<button class="btn btn-success" data-toggle="modal" onclick="getfoodList()" >
        <span class="glyphicon glyphicon-minus"  style="text-shadow: black 5px 3px 3px;"></span>  查询
    </button><br>
	<form id="where">
	   <center>
	      <table>
		    <tr>
			     <td><label for="foodname">食物名称:</label></td>
			     <td><input type="text" class="form-control" id="foodname" name="foodname" placeholder="食物名称"></td>
		    </tr>
		    <tr>
			     <td>
			         <label for="foodname">时间→:</label>
				     <input type="text"  class="form-control" name="starttime" id="starttime">
				 </td>
				 <td>
				     <label for="foodname">←时间:</label>
				     <input type="text" class="form-control" name="endtime" id="endtime">
			     </td>
		    </tr>
		  </table>
	   </center>
	</form>
</div>
<table id="food"></table>
<script type="text/javascript">

function getfoodList(is){

	   $("#food").bootstrapTable('refresh',
			   {query: {
				   "foodname":$("#foodname").val(),
		 			"starttime":$("#starttime").val(),
		 			"endtime":$("#endtime").val(),
				}}
	   );
}
$("[name='starttime']").datetimepicker({
	format:"yyyy-mm-dd",//显示格式
    language: 'zh-CN',//显示中文
    autoclose: true,//选中自动关闭
    todayBtn: true,//显示今日按钮
})
$("[name='endtime']").datetimepicker({
	format:"yyyy-mm-dd",//显示格式
    language: 'zh-CN',//显示中文
    autoclose: true,//选中自动关闭
    todayBtn: true,//显示今日按钮
})
   $("#food").bootstrapTable({
		url:"<%=request.getContextPath()%>/food/queryFood.do",
		columns:[//绑定数据
		        {field:'foodid',title:'食物ID',width:100},
		        {field:'foodname',title:'食物名称',width:100},
		        {field:'foodtype',title:'食物类型',width:100,formatter:function(value,row,index){
 		        	if(value==1){
 		        		return "食品";
 		        	}else if(value==2){
 		        		return "饮品";
 		        	}else if(value==3){
 		        		return "药品";
 		        	}else if(value==4){
 		        		return "毒品";
 		        	}
		        }
		        },
		        {field:'foodprice',title:'食物价格',width:100},
		        {field:'foodcontent',title:'食物介绍',width:100,formatter:function(value,row,index){
			    	   var len = value.length;
			    	   if(len > 20){
			    		   value = value.substring(0,20)+"... ...";
			    	   }
			    	   return value;
			    }},
		        {field:'fooddate',title:'食物时间',width:100},
		        {field:'s',title:'操作',width:100,formatter:function(value,row,index){
		        	return "<button class='btn btn-info' data-toggle='modal'  onclick='updateFood("+row.foodid+")'>"+
		        	'<span class="glyphicon glyphicon-pencil"  style="text-shadow: black 5px 3px 3px;"></span>  修改</button>'
		        }}
		       ],
		       showColumns:true,//显示选择展示列的按钮
			   showRefresh:true,//刷新按钮
			   showToggle:true,//切换显示格式
			   showPaginationSwitch:true,//展示所有数据 和分页数据的切换按钮
		       pagination:true,//显示分页条
			   pageNumber:1,//初始化 页数
			   pageSize:3,//初始化 条数
			   pageList:[5,10,15],//初始化 可选择的条数
			   searchAlign:"left",//搜索框的显示位置
			   paginationHAlign:"left",//分页按钮的显示位置
			   paginationDetailHAlign:"right",//总页数 和条数的显示位置
			   paginationPreText:"上一页",//设置上一页显示的文本
			   paginationNextText:"下一页",//设置下一页显示的文本
			   clickToSelect:true,//选中行  默认选中  单选或复选
			   undefinedText:"-",//有数据为空时 显示的内容
			   queryParams: function(params) {
					 return params;
				 },
			   sidePagination:"client",
			   toolbar:"#cha",
			   method:"post",
			   contentType:"application/x-www-form-urlencoded"
    })


function addFood(){
	   BootstrapDialog.show({
		  title: '添加用户',
		  type: BootstrapDialog.TYPE_PRIMARY,
		     size: BootstrapDialog.SIZE_NORMAL,
		        message:$('<div></div>').load('<%=request.getContextPath()%>/addFood.jsp'),
		        buttons:[{
		        	label : '保存',
	                    action : function(dialogItself) {
	            			$.ajax({
	            				url:"<%=request.getContextPath()%>/food/addsFood.do",
	            				type:"post",
	            				data:$("#addFoodForm").serialize(),
	            				async:false,
	            				success:function (){
	            					alert('新增成功')
	            					dialogItself.close();
	            					$('#food').bootstrapTable('refresh');


	            				}
	            			})
		              }
		        },{// 设置关闭按钮
		            label : '关闭',
		            action : function(dialogItself) {
		            	dialogItself.close();
		            }
                }],
     });
}
function updateFood(foodid){
	 BootstrapDialog.show({
		  title: '修改用户',
		  type: BootstrapDialog.TYPE_PRIMARY,
		     size: BootstrapDialog.SIZE_NORMAL,
		        message:$('<div></div>').load('<%=request.getContextPath()%>/food/toUpdate.do?foodid='+foodid),
		        buttons:[{
		        	label : '保存',
	                    action : function(dialogItself) {
	            			$.ajax({
	            				url:"<%=request.getContextPath()%>/food/updateFood.do",
	            				type:"post",
	            				data:$("#updateFoodForm").serialize(),
	            				async:false,
	            				success:function (){
	            					dialogItself.close();
	            					alert("修改成功！");
	            					$('#food').bootstrapTable('refresh');

	            				}
	            			})
		              }
		        },{// 设置关闭按钮
		            label : '关闭',
		            action : function(dialogItself) {
		                dialogItself.close();
		            }
		        }],
    });
}
</script>
<script type="text/javascript">
function deleAllFood(foodid){
	var temp = "";
	var de = $('#food').bootstrapTable("getSelections");
	for (var i = 0; i < de.length; i++) {
		temp+=","+de[i].foodid;
	}
	temp = temp.substr(1);
		if(temp==""){
			alert("请选择要删除的数据");
		}else if(temp!=""){
		   $.ajax({
   				url:"<%=request.getContextPath()%>/food/deleteFood.do",
   				type:"post",
   				data:{ids:temp},
   				dataType:"text",
   				success:function (){
   					alert('删除ok')
   					$('#food').bootstrapTable('refresh');

				}
			})
		}

}
</script>
</body>

</html>