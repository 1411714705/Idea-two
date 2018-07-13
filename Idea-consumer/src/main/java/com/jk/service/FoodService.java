package com.jk.service;

import com.jk.model.Food;

import java.security.KeyStore;
import java.util.List;

public interface FoodService {
    List<Food> getFood(Integer limit, Integer offset, Food food);

    List<Food> getFoodSize(Integer limit, Integer offset, Food food);

    List<Food> queryFood();

    void addsFood(List<Food> listFood);

    Food getfoodById(Integer foodid);

    void updateFood(Food food);

    void deleteFood(String ids);


}
