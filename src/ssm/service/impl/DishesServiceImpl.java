package ssm.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import ssm.mapper.DishMapper;
import ssm.mapper.DishesMapperWaiter;
import ssm.po.Dish;
import ssm.po.DishesQueryVo;
import ssm.po.DishesWaiter;
import ssm.service.DishesService;

/**
 * Title:DishesServiceImpl Description: 商品管理
 * 
 * @author Susan Cappuccino
 * @date 2018年7月13日下午4:42:42
 * @version 1.0
 */
public class DishesServiceImpl implements DishesService {

	@Autowired
	private DishesMapperWaiter dishesMapperWaiter;

	@Autowired
	private DishMapper dishMapper;

	@Override
	public List<DishesWaiter> findDishesList(DishesQueryVo dishesQueryVo) throws Exception {
		return dishesMapperWaiter.findDishesList(dishesQueryVo);
	}

	@Override
	public DishesWaiter findDishesById(Integer id) throws Exception {
		Dish dish = dishMapper.selectByPrimaryKey(id);
		DishesWaiter dishesWaiter = new DishesWaiter();
		// 将Items的属性值copy到ItemsCustom
		BeanUtils.copyProperties(dish, dishesWaiter);
		return dishesWaiter;
	}

	@Override
	public void updateDishes(Integer id, DishesWaiter dishesWaiter) throws Exception {
		// TODO Auto-generated method stub
		dishesWaiter.setId(id);
		dishMapper.updateByPrimaryKeyWithBLOBs(dishesWaiter);
	}

	@Override
	public void deleteDishesById(Integer id) {
		// TODO Auto-generated method stub
		dishMapper.deleteByPrimaryKey(id);
	}

	@Override
	public DishesWaiter insertDishes(Integer id, DishesWaiter dishesWaiter) throws Exception {
		id = dishMapper.insert(dishesWaiter);
		// 将Items的属性值copy到ItemsCustom
		return dishesWaiter;
	}


}
