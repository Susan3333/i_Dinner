package ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ssm.mapper.OrdersMapper;
import ssm.mapper.OrdersMapperWaiter;
import ssm.mapper.OrdersdetailMapper;
import ssm.mapper.OrdersdetailMapperWaiter;
import ssm.po.OrdersQueryVo;
import ssm.po.OrdersWaiter;
import ssm.po.OrdersdetailWaiter;
import ssm.service.OrdersService;

/**
*Title:OrdersServiceImpl 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月17日上午11:08:03
*@version 1.0
*/
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	private OrdersMapperWaiter ordersMapperWaiter;

	@Autowired
	private OrdersdetailMapperWaiter ordersdetailMapperWaiter;
	@Autowired
	private OrdersMapper ordersMapper;
	@Autowired
	private OrdersdetailMapper ordersdetailMapper;
	@Override
	public List<OrdersWaiter> findOrdersList(OrdersQueryVo ordersQueryVo) throws Exception {
		return ordersMapperWaiter.findOrdersList(ordersQueryVo);
	}

	@Override
	public List<OrdersdetailWaiter> findOrdersdetailList(Integer id) throws Exception {
		return ordersdetailMapperWaiter.selectByOrdersdetail(id);
	}

	@Override
	public OrdersWaiter insertOrders(Integer id, OrdersWaiter ordersWaiter) throws Exception {
		id = ordersMapper.insert(ordersWaiter);
		return ordersWaiter;
	}

	@Override
	public OrdersdetailWaiter insertOrdersdetail(Integer id, OrdersdetailWaiter ordersdetailWaiter) throws Exception {
		id = ordersdetailMapper.insert(ordersdetailWaiter);
		return ordersdetailWaiter;
	}

}
