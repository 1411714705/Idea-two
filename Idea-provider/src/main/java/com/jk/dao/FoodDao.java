package com.jk.dao;

import com.jk.model.Food;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FoodDao {
    List<Food> getFood(@Param("limit") Integer limit, @Param("offset")Integer offset, @Param("food")Food food);

    List<Food> getFoodSize(@Param("limit") Integer limit, @Param("offset")Integer offset, @Param("food")Food food);

    List<Food> queryFood();

    void addsFood(@Param("listFood") List<Food> listFood);

    Food getfoodById(Integer foodid);

    void updateFood(Food food);

    void deleteFood(@Param("ids") String ids);


}
