package ssm.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ssm.controller.validation.validGroup1;
import ssm.po.Dish;
import ssm.po.DishesQueryVo;
import ssm.po.DishesWaiter;
import ssm.service.DishesService;

/**
 * Title:DishesController Description: 商品的Controller
 * 
 * @author Susan Cappuccino
 * @date 2018年7月13日下午6:03:52
 * @version 1.0
 */
@Controller
// 为了对url进行分类管理 ，可以在这里定义根路径，最终访问url是根路径+子路径
// 比如：商品列表：/dishes/queryDishes.action
@RequestMapping("/dishes")

public class DishesController {
	@Autowired
	private DishesService dishesService;

	// 商品显示
	@RequestMapping("/dislayDishes")
	public ModelAndView displayDishes(HttpServletRequest request, DishesQueryVo dishesQueryVo) throws Exception {
		// 测试forward后request是否可以共享
		// System.out.println(request.getParameter("id"));
		// 调用service查找 数据库，查询商品列表
		List<DishesWaiter> dishesList = dishesService.findDishesList(dishesQueryVo);
		// 返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 相当 于request的setAttribut，在jsp页面中通过dishesList取数据
		modelAndView.addObject("dishesList", dishesList);

		// 指定视图
		// 下边的路径，如果在视图解析器中配置jsp路径的前缀和jsp路径的后缀，修改为
		// modelAndView.setViewName("/WEB-INF/jsp/dishes/dishesList.jsp");
		// 上边的路径配置可以不在程序中指定jsp路径的前缀和jsp路径的后缀
		modelAndView.setViewName("home");
		return modelAndView;
	}
	
	// 商品查询
	@RequestMapping("/queryDishes")
	public ModelAndView queryDishes(HttpServletRequest request, DishesQueryVo dishesQueryVo) throws Exception {
		// 测试forward后request是否可以共享
		System.out.println(request.getParameter("id"));
		// 调用service查找 数据库，查询商品列表
		List<DishesWaiter> dishesList = dishesService.findDishesList(dishesQueryVo);
		// 返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 相当 于request的setAttribut，在jsp页面中通过dishesList取数据
		modelAndView.addObject("dishesList", dishesList);

		// 指定视图
		// 下边的路径，如果在视图解析器中配置jsp路径的前缀和jsp路径的后缀，修改为
		// modelAndView.setViewName("/WEB-INF/jsp/dishes/dishesList.jsp");
		// 上边的路径配置可以不在程序中指定jsp路径的前缀和jsp路径的后缀
		modelAndView.setViewName("dishes/dishesList");
		return modelAndView;
	}

	// 商品信息修改页面显示
	// @RequestMapping("/editDishes")
	// 限制http请求方法，可以post和get
	@RequestMapping(value = "/editDishes", method = { RequestMethod.POST, RequestMethod.GET })
	public String editDishes(Model model, Integer id) throws Exception {
		// 调用service根据商品id查询商品信息
		DishesWaiter dishesWaiter = dishesService.findDishesById(id);
		// 通过形参中的model将model数据传到页面
		model.addAttribute("dishesWaiter", dishesWaiter);
		return "dishes/editDishes";
	}

	// 商品信息插入页面显示
	@RequestMapping(value = "/insertDishes", method = { RequestMethod.POST, RequestMethod.GET })
	public String insertDishes(Model model, Dish dish) throws Exception {

		model.addAttribute("dish", dish);
		return "dishes/insertDishes";
	}

	// 商品信息插入提交
	@RequestMapping("/insertDishesSubmit")
	// @Validated在前，BindingResult在后
	public String insertDishesSubmit(Model model, HttpServletRequest request, String name, Integer id,
			@Validated(value = { validGroup1.class }) DishesWaiter dishesWaiter, BindingResult bindingResult,
			MultipartFile dishes_pic) throws Exception {
		// 获取校验错误信息
		if (bindingResult.hasErrors()) {
			// 输出错误信息
			List<ObjectError> allErrors = bindingResult.getAllErrors();
			for (ObjectError objectError : allErrors) {
				System.out.println(objectError.getDefaultMessage());
			}
			model.addAttribute("allErrors", allErrors);
			// 简单类型数据回显
			model.addAttribute("id", id);
			model.addAttribute("dishesWaiter", dishesWaiter);
			return "dishes/insertDishes";
		}

		// 上传图片

		// 原始名称
		String originalFilename = dishes_pic.getOriginalFilename();
		if (dishes_pic != null && originalFilename != null && originalFilename.length() != 0) {
			// 图片的物理路径
			String pic_path = "G:\\SSM\\";
			// 新的图片名称
			String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
			// 新的图片
			File newFile = new File(pic_path + newFileName);
			// 讲内存中的数据写入磁盘
			dishes_pic.transferTo(newFile);
			// 将新的名称写到itemsCustom
			dishesWaiter.setPitcure(newFileName);
		}
		dishesService.insertDishes(id, dishesWaiter);
		// 返回ModelAndView
		// ModelAndView modelAndView = new ModelAndView();
		// 返回一个成功页面
		// modelAndView.setViewName("success");
		// 调用service更新商品信息，页面需要将商品信息传到此方法
		// dishesService.updateDishes(id, dishesCustom);
		// 重定向到商品查询列表
		return "redirect:queryDishes.action";
		// 页面转发
		// return "forward:queryDishes.action";
		// return "dishes/dishesList";
	}

	// 商品信息修改提交
		@RequestMapping("/editDishesSubmit")
		// @Validated在前，BindingResult在后
		public String editDishesSubmit(Model model, HttpServletRequest request, String name, Integer id,
				@Validated(value = { validGroup1.class }) DishesWaiter dishesWaiter, BindingResult bindingResult,
				MultipartFile dishes_pic) throws Exception {
			// 获取校验错误信息
			if (bindingResult.hasErrors()) {
				// 输出错误信息
				List<ObjectError> allErrors = bindingResult.getAllErrors();
				for (ObjectError objectError : allErrors) {
					System.out.println(objectError.getDefaultMessage());
				}
				model.addAttribute("allErrors", allErrors);
				// 简单类型数据回显
				model.addAttribute("id", id);
				model.addAttribute("dishesWaiter", dishesWaiter);
				return "dishes/editDishes";
			}

			// 上传图片

			// 原始名称
			String originalFilename = dishes_pic.getOriginalFilename();
			if (dishes_pic != null && originalFilename != null && originalFilename.length() != 0) {
				// 图片的物理路径
				String pic_path = "G:\\SSM\\";
				// 新的图片名称
				String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
				// 新的图片
				File newFile = new File(pic_path + newFileName);
				// 讲内存中的数据写入磁盘
				dishes_pic.transferTo(newFile);
				// 将新的名称写到itemsCustom
				dishesWaiter.setPitcure(newFileName);
			}
		dishesService.updateDishes(id, dishesWaiter);
			// 返回ModelAndView
			// ModelAndView modelAndView = new ModelAndView();
			// 返回一个成功页面
			// modelAndView.setViewName("success");
			// 调用service更新商品信息，页面需要将商品信息传到此方法
			// dishesService.updateDishes(id, dishesCustom);
			// 重定向到商品查询列表
			return "redirect:queryDishes.action";
			// 页面转发
			// return "forward:queryDishes.action";
			// return "dishes/dishesList";
		}
	
	// 批量删除商品信息
	@RequestMapping("/deleteDishes")
	public String deleteDishes(HttpServletRequest request, Integer[] dishes_id) throws Exception {
		// 调用service成功删除商品
		for (int i = 0; i < dishes_id.length; i++) {
			int id = dishes_id[i];
			dishesService.deleteDishesById(id);
		}
		return "redirect:queryDishes.action";

	}
}
