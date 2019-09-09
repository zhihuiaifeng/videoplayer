package org.fkit.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
//import org.fkit.domain.User;
import org.fkit.domain.VUser;

/**
 * UserMapper接口
 * */
public interface UserMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String zhanghao
	 * @param String password
	 * @return 找到返回VUser对象，没有找到返回null
	 * */
	@Select("select * from v_user where zhanghao = #{zhanghao} and password = #{password}")
	VUser findWithLoginnameAndPassword(@Param("zhanghao")String zhanghao,
			@Param("password") String password);
	@Insert("insert into v_user(level,name,password,beizhu,zhanghao) values(#{level},#{name},#{password},#{beizhu},#{zhanghao})")
	int InsertUser(@Param("level")String level,
			@Param("name")String name,
			@Param("password")String password,
			@Param("beizhu")String beizhu,
			@Param("zhanghao")String zhanghao);
	
	@Select("select * from v_user where id = #{id}")
	VUser findWithid(@Param("id")int id);
	
	@Update("update v_user set name = #{name} where id = #{id}")
	public int updateName(@Param("name")String name,@Param("id")int id);
	@Update("update v_user set beizhu = #{beizhu} where id = #{id}")
	public int updateBeizhu(@Param("beizhu")String beizhu,@Param("id")int id);
	@Update("update v_user set password = #{password} where id = #{id}")
	public int updatePassword(@Param("password")String name,@Param("id")int id);
	@Select("select * from v_user where zhanghao = #{zhanghao} ")
	VUser findWithZhanghao(@Param("zhanghao")String zhanghao);
	@Select("select * from v_user where name = #{name} ")
	VUser findWithname(@Param("name")String name);
}
