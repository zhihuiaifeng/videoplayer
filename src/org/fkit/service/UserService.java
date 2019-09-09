package org.fkit.service;


import org.apache.ibatis.annotations.Param;
import org.fkit.domain.VUser;

/**
 * User服务层接口
 * */
public interface UserService {
	
	/**
	 * 判断用户登录
	 * @param String zhanghao
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	VUser login(String zhanghao,String password);
	
	VUser findWithidService(int id);
	
	int insertUser(String level,String name,String password,String beizhu,String zhanghao);
	
	int updateNameService(String name,int id);
	
	int updateBeizhuService(String beizhu,int id);
	
	int updatePasswordService(String password,int id);
	
	VUser zhuceService(String zhanghao);
	
	VUser zhuceService1(String name);
}
