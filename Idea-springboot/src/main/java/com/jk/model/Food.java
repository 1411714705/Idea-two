/** 
 * <pre>项目名称:zzz-Dubbo-consumer 
 * 文件名称:Food.java 
 * 包名:com.jk.model 
 * 创建日期:2018年7月8日下午5:31:54 
 * Copyright (c) 2018, 634369607@qq.com All Rights Reserved.</pre> 
 */  
package com.jk.model;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/** 
 * <pre>项目名称：zzz-Dubbo-consumer    
 * 类名称：Food    
 * 类描述：    
 * 创建人：庄凯强 
 * 创建时间：2018年7月8日 下午5:31:54    
 * 修改人：庄凯强     
 * 修改时间：2018年7月8日 下午5:31:54    
 * 修改备注：       
 * @version </pre>    
 */
@Data
public class Food implements Serializable{

	
	private static final long serialVersionUID = 1L;

	/* 主键ID */
	private Integer foodid;
	
	/* 食物名称 */
	private String  foodname;
	
	/* 食物类型 */
	private String  foodtype;
	
	/* 食物价格 */
	private String  foodprice;
	
	/* 食物介绍 */
	private String  foodcontent;
	
	/* 食物时间 */
	private String  fooddate;
	
	
	/* 食物集合  */
	private List<Food> listFood;
	
	/* 条查 开始时间  */
    private String  starttime;
    
    /* 条查 结束时间  */
	private String  endtime;

	/* (non-Javadoc)    
	 * @see java.lang.Object#toString()    
	 */
	@Override
	public String toString() {
		return "Food [foodid=" + foodid + ", foodname=" + foodname + ", foodtype=" + foodtype + ", foodprice="
				+ foodprice + ", foodcontent=" + foodcontent + ", fooddate=" + fooddate + ", listFood=" + listFood
				+ ", starttime=" + starttime + ", endtime=" + endtime + "]";
	}
	
	
	
}
