package com.jk.service;

import com.jk.dao.FoodDao;
import com.jk.model.Food;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FoodServiceImpl implements  FoodService {

    @Resource
    private FoodDao foodDao;

    @Override
    public List<Food> getFood(Integer limit, Integer offset, Food food) {
        return foodDao.getFood(limit,offset,food);
    }

    @Override
    public int getFoodll(Food food) {
        return foodDao.getFoodll(food);
    }
}
