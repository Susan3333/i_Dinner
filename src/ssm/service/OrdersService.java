package ssm.service;

import java.util.List;

import ssm.po.OrdersQueryVo;
import ssm.po.OrdersWaiter;
import ssm.po.OrdersdetailWaiter;

/**
*Title:Orders 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月17日上午11:07:34
*@version 1.0
*/
public interface OrdersService {
	// 商品查询列表
	public List<OrdersWaiter> findOrdersList(OrdersQueryVo ordersQueryVo) throws Exception;

	public List<OrdersdetailWaiter> findOrdersdetailList(Integer id) throws Exception;

	// 插入点菜
	public OrdersWaiter insertOrders(Integer id, OrdersWaiter ordersWaiter) throws Exception;

	// 插入点菜细节
	public OrdersdetailWaiter insertOrdersdetail(Integer id, OrdersdetailWaiter ordersdetailWaiter) throws Exception;

}
