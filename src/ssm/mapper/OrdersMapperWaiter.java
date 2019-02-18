package ssm.mapper;

import java.util.List;

import ssm.po.OrdersQueryVo;
import ssm.po.OrdersWaiter;

/**
*Title:OrdersMapperWaiter 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月17日下午12:56:38
*@version 1.0
*/
public interface OrdersMapperWaiter {
	// 菜单查询列表
	public List<OrdersWaiter> findOrdersList(OrdersQueryVo OrdersQueryVo) throws Exception;
}
