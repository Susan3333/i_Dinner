package ssm.service;

import ssm.po.Admin;

/**
 * Title:adminService Description:
 * 
 * @author Susan Cappuccino
 * @date 2018年7月16日下午4:04:26
 * @version 1.0
 */
public interface AdminService {

	public Admin findAdmin(String name, String password) throws Exception;

}
