package ssm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
*Title:HandlerInterceptor1 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月16日下午2:25:34
*@version 1.0
*/
public class HandlerInterceptor1 implements HandlerInterceptor {

	// 执行Handler之后
	// 统一异常，日志处理
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("HandlerInterceptor1...afterCompletion");

	}

	// 进入Handler之后，返回ModelAndView之前
	// 将公用的模型数据（菜单导航）在这里传到视图，也可以在这里统一制定视图
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("HandlerInterceptor1...postHandle");
	}
	// 进入Handler之前执行
	// 用于身份认证，身份授权
	// 登录认证，权限校验

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("HandlerInterceptor1...preHandle");
		// return false表示拦截
		return true;
	}
}
