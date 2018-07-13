package com.jk.service;

import com.jk.dao.FoodDao;
import com.jk.model.Food;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FoodServiceImpl implements FoodService {

    @Resource
    private FoodDao foodDao;

    @Override
    public List<Food> getFood(Integer limit, Integer offset, Food food) {
        return foodDao.getFood(limit,offset,food);
    }

    @Override
    public List<Food> getFoodSize(Integer limit, Integer offset,Food food) {
        return foodDao.getFoodSize(limit,offset,food);
    }

    @Override
    public List<Food> queryFood() {
        return foodDao.queryFood();
    }

    @Override
    public void addsFood(List<Food> listFood) {
        foodDao.addsFood(listFood);
    }

    @Override
    public Food getfoodById(Integer foodid) {
        return foodDao.getfoodById(foodid);
    }

    @Override
    public void updateFood(Food food) {
        foodDao.updateFood(food);
    }

    @Override
    public void deleteFood(String ids) {
        foodDao.deleteFood(ids);
    }
}
