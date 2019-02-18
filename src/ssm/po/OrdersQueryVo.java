package ssm.po;

import java.util.List;

/**
 * Title:OrdersQueryVo Description:
 * 
 * @author Susan Cappuccino
 * @date 2018年7月17日下午12:49:09
 * @version 1.0
 */
public class OrdersQueryVo {
	// 菜单信息
	private Orders orders;
	private OrdersWaiter ordersWaiter;
	// 批量菜单信息
	private List<Orders> ordersList;
	// 菜单详情
	private Ordersdetail ordersdetail;
	private List<Ordersdetail> ordersdetailList;
	// 菜菜的信息
	private Dish dish;
	private OrdersdetailWaiter ordersdetailWaiter;

	public Ordersdetail getOrdersdetail() {
		return ordersdetail;
	}

	public void setOrdersdetail(Ordersdetail ordersdetail) {
		this.ordersdetail = ordersdetail;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public List<Orders> getOrdersList() {
		return ordersList;
	}

	public void setOrdersList(List<Orders> ordersList) {
		this.ordersList = ordersList;
	}

	public OrdersWaiter getOrdersWaiter() {
		return ordersWaiter;
	}

	public void setOrdersWaiter(OrdersWaiter ordersWaiter) {
		this.ordersWaiter = ordersWaiter;
	}

	public Dish getDish() {
		return dish;
	}

	public void setDish(Dish dish) {
		this.dish = dish;
	}

	public OrdersdetailWaiter getOrdersdetailWaiter() {
		return ordersdetailWaiter;
	}

	public void setOrdersdetailWaiter(OrdersdetailWaiter ordersdetailWaiter) {
		this.ordersdetailWaiter = ordersdetailWaiter;
	}

	public List<Ordersdetail> getOrdersdetailList() {
		return ordersdetailList;
	}

	public void setOrdersdetailList(List<Ordersdetail> ordersdetailList) {
		this.ordersdetailList = ordersdetailList;
	}






}
