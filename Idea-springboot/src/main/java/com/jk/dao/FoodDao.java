package com.jk.dao;

import com.jk.model.Food;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface FoodDao {

    @Select("select * from t_food limit #{offset},#{limit}")
    List<Food> getFood(@Param("limit") Integer limit, @Param("offset") Integer offset, @Param("food")Food food);

    @Select("select count(*) from t_food")
    int getFoodll(Food food);
}
