package ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import ssm.mapper.AdminMapper;
import ssm.po.Admin;
import ssm.service.AdminService;

/**
*Title:adminServiceImpl 
*Description: 
* @author Susan Cappuccino
* @date 2018年7月16日下午4:04:46
*@version 1.0
*/
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public Admin findAdmin(String name, String password) throws Exception {
		Admin admin = adminMapper.findAdminByNameAndPassword(name, password);
		return admin;
	}
}


