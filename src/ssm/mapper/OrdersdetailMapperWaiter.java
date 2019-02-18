package ssm.mapper;

import java.util.List;

import ssm.po.OrdersdetailWaiter;

/**
*Title:OrdersdetailMapperWaiter 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月18日下午4:48:18
*@version 1.0
*/
public interface OrdersdetailMapperWaiter {

	public List<OrdersdetailWaiter> selectByOrdersdetail(Integer id) throws Exception;
}
