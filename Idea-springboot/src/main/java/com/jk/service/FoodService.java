package com.jk.service;
import com.jk.model.Food;

import java.util.List;

public interface FoodService {

    List<Food> getFood(Integer limit, Integer offset, Food food);

    int getFoodll(Food food);


}
