package ssm.po;

import java.util.List;

/**
 * Title:DishesQueryVo Description: 商品包装对象
 * 
 * @author Susan Cappuccino
 * @date 2018年7月13日下午4:10:13
 * @version 1.0
 */
public class DishesQueryVo {

	// 商品信息
	private Dish dishes;
	private DishesWaiter dishWaiter;
	// 批量商品信息
	private List<DishesWaiter> dishesList;

	public Dish getDishes() {
		return dishes;
	}

	public void setDishes(Dish dishes) {
		this.dishes = dishes;
	}



	public List<DishesWaiter> getDishesList() {
		return dishesList;
	}

	public void setDishesList(List<DishesWaiter> dishesList) {
		this.dishesList = dishesList;
	}

	public DishesWaiter getDishWaiter() {
		return dishWaiter;
	}

	public void setDishWaiter(DishesWaiter dishWaiter) {
		this.dishWaiter = dishWaiter;
	}
}
