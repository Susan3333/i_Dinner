package ssm.service;

import java.util.List;

import ssm.po.DishesQueryVo;
import ssm.po.DishesWaiter;

/**
 * Title:DishesService Description: 商品管理的Service
 * 
 * @author Susan Cappuccino
 * @date 2018年7月13日下午4:36:01
 * @version 1.0
 */
public interface DishesService {

	// 商品查询列表
	public List<DishesWaiter> findDishesList(DishesQueryVo DishesQueryVo) throws Exception;

	// 根据id查询商品信息
	public DishesWaiter findDishesById(Integer id) throws Exception;

	// 修改商品信息
	public void updateDishes(Integer id, DishesWaiter DishesWaiter) throws Exception;

	// 批量删除
	public void deleteDishesById(Integer id);

	// 插入商品
	public DishesWaiter insertDishes(Integer id, DishesWaiter DishesWaiter) throws Exception;

}
