package ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ssm.controller.validation.validGroup1;
import ssm.po.Orders;
import ssm.po.OrdersQueryVo;
import ssm.po.OrdersWaiter;
import ssm.po.Ordersdetail;
import ssm.po.OrdersdetailWaiter;
import ssm.service.OrdersService;

/**
 * Title:OrdersController Description:
 * 
 * @author Susan Cappuccino
 * @date 2018年7月17日上午11:05:34
 * @version 1.0
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	private OrdersService ordersService;
	// 菜单显示
	@RequestMapping("/displayOrders")
	public ModelAndView displayOrders(HttpServletRequest request, OrdersQueryVo ordersQueryVo)
			throws Exception {
		// 调用service查找 数据库，查询商品列表
		List<OrdersWaiter> ordersList = ordersService.findOrdersList(ordersQueryVo);
		// 返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 相当 于request的setAttribut，在jsp页面中通过dishesList取数据
		modelAndView.addObject("ordersList", ordersList);
		modelAndView.setViewName("orders/orderList");
		return modelAndView;
	}

	// 本单详情展示
	@RequestMapping("/displayOrdersDetail")
	public ModelAndView displayOrdersDetail(HttpServletRequest request, Integer id)
			throws Exception {
		List<OrdersdetailWaiter> ordersdetailWaiterList = ordersService.findOrdersdetailList(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ordersdetailWaiterList", ordersdetailWaiterList);
		modelAndView.setViewName("orders/orderDetailList");
		return modelAndView;
	}

	// 增加一单
	@RequestMapping("/insertOrders")
	public String insertOrders(Model model, Orders orders) throws Exception {
		model.addAttribute("orders", orders);
		return "orders/insertOrders";
		// return "redirect:displayOrders.action";
	}
	
	// 增加一单
	@RequestMapping("/insertOrders1")
	public String insertOrders1(Model model, Orders orders) throws Exception {
		model.addAttribute("orders", orders);
		return "orders/insertOrdersdetail";
		// return "redirect:displayOrders.action";
	}

	// 增加一单的提交
	@RequestMapping("/insertOrdersSubmit")
	public String insertOrdersSubmit(Model model, HttpServletRequest request, String name, Integer id,
			@Validated(value = { validGroup1.class }) OrdersWaiter ordersWaiter, BindingResult bindingResult,
			MultipartFile dishes_pic) throws Exception {
		ordersService.insertOrders(id, ordersWaiter);
		// return "redirect:displayOrders.action";
		return "orders/insertOrdersdetail";
	}

	// 输入桌号客人之后点餐
	@RequestMapping("/insertOrdersdetail")
	public String insertOrdersdetail(Model model, Ordersdetail ordersdetail) throws Exception {
		// ordersService.insertOrdersdetail(id, ordersdetailWaiter);
		model.addAttribute("ordersdetail", ordersdetail);
		// return "orders/insertOrdersdetail";
		return "redirect:displayOrders.action";
	}

	// 输入桌号客人之后点餐的提交
	@RequestMapping("/insertOrdersdetailSubmit")
	public String insertOrdersdetailSubmit(Model model, HttpServletRequest request, Integer id,
			@Validated(value = { validGroup1.class }) OrdersdetailWaiter ordersdetailWaiter,
			BindingResult bindingResult, MultipartFile dishes_pic) throws Exception {
		ordersService.insertOrdersdetail(id, ordersdetailWaiter);
		return "redirect:displayOrders.action";
	}
}
