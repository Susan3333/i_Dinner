package ssm.mapper;

import java.util.List;

import ssm.po.DishesQueryVo;
import ssm.po.DishesWaiter;

/**
*Title:DishesMapperWaiter 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月15日下午5:23:14
*@version 1.0
*/
public interface DishesMapperWaiter {
	// 商品查询列表
	public List<DishesWaiter> findDishesList(DishesQueryVo dishesQueryVo) throws Exception;

}
