package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.jk.model.Food;
import com.jk.service.FoodService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("food")
public class FoodController {

    @Resource
    private FoodService foodService;

    //食物搜索
    @RequestMapping("selectFood")
    @ResponseBody
    public String selectFood(Integer limit, Integer offset, Food food){
        List<Food> foodList = foodService.getFood(limit,offset,food);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("total", foodService.getFoodSize(limit,offset,food).size());
        map.put("rows",foodList );
        return JSON.toJSONStringWithDateFormat(foodList, "yyyy-MM-dd", SerializerFeature.DisableCircularReferenceDetect);
    }
    //简单查询
    @RequestMapping("queryFood")
    @ResponseBody
    public List<Food> queryFood(){
        List<Food> foodList = foodService.queryFood();
        return foodList;
    }

    /* 修改 跳转  */
    @RequestMapping("toUpdate")
    public ModelAndView toUpdate(Integer foodid) {  // 跳   dialog  页面
        ModelAndView mav = new ModelAndView("updateFoodList");
        mav.addObject("food", foodService.getfoodById(foodid));
        return mav;
    }

    /*批量新增*/
    @RequestMapping("addsFood")
    @ResponseBody
    public void addsFood(Food food){
        foodService.addsFood(food.getListFood());
    }

    //修改食物
    @RequestMapping("updateFood")
    @ResponseBody
    public void updateFood(Food food){
        foodService.updateFood(food);
    }

    //删除食物
    @RequestMapping("/deleteFood")
    @ResponseBody
    public void deleteFood(String ids){
        foodService.deleteFood(ids);
    }

}
