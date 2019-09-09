package org.fkit.service.impl;


import org.fkit.domain.VUser;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * User服务层接口实现类
 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService {
	
	/**
	 * 自动注入UserMapper
	 * */
	@Autowired
	private UserMapper userMapper;

	/**
	 * UserService接口login方法实现
	 * @see { UserService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public VUser login(String zhanghao, String password) {
		return userMapper.findWithLoginnameAndPassword(zhanghao, password);
	}

	@Override
	public int insertUser(String level, String name, String password, String beizhu,String zhanghao) {
		// TODO Auto-generated method stub
		return userMapper.InsertUser(level, name, password, beizhu,zhanghao);
	}

	@Override
	public int updateNameService(String name, int id) {
		// TODO Auto-generated method stub
		return userMapper.updateName(name, id);
	}

	@Override
	public int updateBeizhuService(String beizhu, int id) {
		// TODO Auto-generated method stub
		return userMapper.updateBeizhu(beizhu, id);
	}

	@Override
	public int updatePasswordService(String password, int id) {
		// TODO Auto-generated method stub
		return userMapper.updatePassword(password, id);
	}

	@Override
	public VUser findWithidService(int id) {
		// TODO Auto-generated method stub
		return userMapper.findWithid(id);
	}

	@Override
	public VUser zhuceService(String zhanghao) {
		// TODO Auto-generated method stub
		return userMapper.findWithZhanghao(zhanghao);
	}

	@Override
	public VUser zhuceService1(String name) {
		// TODO Auto-generated method stub
		return userMapper.findWithname(name);
	}

}
