/** 
 * <pre>项目名称:zzz-Dubbo-consumer 
 * 文件名称:Food.java 
 * 包名:com.jk.model 
 * 创建日期:2018年7月8日下午5:31:54 
 * Copyright (c) 2018, 634369607@qq.com All Rights Reserved.</pre> 
 */  
package com.jk.model;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
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

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Integer getFoodid() {
		return foodid;
	}

	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}

	public String getFoodname() {
		return foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	public String getFoodtype() {
		return foodtype;
	}

	public void setFoodtype(String foodtype) {
		this.foodtype = foodtype;
	}

	public String getFoodprice() {
		return foodprice;
	}

	public void setFoodprice(String foodprice) {
		this.foodprice = foodprice;
	}

	public String getFoodcontent() {
		return foodcontent;
	}

	public void setFoodcontent(String foodcontent) {
		this.foodcontent = foodcontent;
	}

	public String getFooddate() {
		return fooddate;
	}

	public void setFooddate(String fooddate) {
		this.fooddate = fooddate;
	}

	public List<Food> getListFood() {
		return listFood;
	}

	public void setListFood(List<Food> listFood) {
		this.listFood = listFood;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

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
