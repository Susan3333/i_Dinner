package ssm.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ssm.po.Admin;
import ssm.service.AdminService;

/**
 * Title:LoginController Description:
 * 
 * @author Susan Cappuccino
 * @date 2018年7月16日下午3:18:53
 * @version 1.0
 */
@Controller
public class LoginController {
	@Autowired
	private AdminService adminService;

	// 登录
	@RequestMapping("/login")
	public String login(HttpSession session, @Param("name") String name, @Param("password") String password)
			throws Exception {
		Admin admin = new Admin();
		admin.setName(name);
		admin.setPassword(password);
		admin = adminService.findAdmin(name, password);
		// 在session中保存用户身份信息
		if (admin != null) {
			session.setAttribute("name", name);
			// 重定向到商品列表页面
			return "forward:/dishes/queryDishes.action";
		}
		return "login";
	

	}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// 清除session
		session.invalidate();

		// 重定向到商品列表页面
		return "redirect:/dishes/queryDishes.action";
	}

}
