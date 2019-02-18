package ssm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
*Title:HandlerInterceptor1 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月16日下午2:25:34
*@version 1.0
*/
public class LoginInterceptor implements HandlerInterceptor {

	// 执行Handler之后
	// 统一异常，日志处理
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	// 进入Handler之后，返回ModelAndView之前
	// 将公用的模型数据（菜单导航）在这里传到视图，也可以在这里统一制定视图
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
	}
	// 进入Handler之前执行
	// 用于身份认证，身份授权
	// 登录认证，权限校验

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// 获取请求的url
		String url = request.getRequestURI();
		// 判断url是否是公开 地址（实际使用时将公开 地址配置配置文件中）
		// 这里公开地址是登陆提交的地址
		if (url.indexOf("login.action") >= 0 || url.indexOf("dislayDishes.action") >= 0) {
			// 如果进行登陆提交，放行
			return true;
		}

		// 判断session
		HttpSession session = request.getSession();
		// 从session中取出用户身份信息
		String name = (String) session.getAttribute("name");

		if (name != null) {
			// 身份存在，放行
			return true;
		}

		// 执行这里表示用户身份需要认证，跳转登陆页面
		request.getRequestDispatcher("/loginChoose.jsp").forward(request, response);

		// return false表示拦截，不向下执行
		// return true表示放行
		return false;
	}

}
