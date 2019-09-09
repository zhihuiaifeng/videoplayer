package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Video;

/**
 * VideoMapper接口
 * */
public interface VideoMapper {
	/**
	 * 查询视频
	 * 模糊查询
	 * @return Video对象集合
	 * */
	@Select(" select * from v_video where biaoti like concat('%', #{key} ,'%') "
			+ "or jianjie like concat('%', #{key} ,'%') "
			+ "or author like concat('%', #{key} ,'%')")
	List<Video> findWithKey(@Param("key")String key);
	/*
	 * 查询视频
	 * id查询
	 * @return Video对象集合
	 * */
	@Select(" select * from v_video where id = #{id}")
	List<Video> findWithId(@Param("id")int id);
	/*
	 * 查询未审核视频
	 * @return Video对象集合
	 * */
	@Select(" select * from v_video where shenhe = #{shenhe}")
	List<Video> findWithShenhe(@Param("shenhe")String shenhe);
	/*
	 * 查询视频
	 * authorId查询
	 * @return Video对象集合
	 * */
	@Select(" select * from v_video where authorId = #{authorId}")
	List<Video> findWithauthorId(@Param("authorId")int authorId);
	/*
	 * 查询视频
	 * p查询结果排序
	 * @return Video对象集合
	 * */
	@Select(" select * from v_video order by ${key} desc")
	List<Video> findAndOrder(@Param("key")String key);
	/*
	 * 插入新视频 
	 * */
	@Insert("insert into v_video (id,biaoti,jianjie,author,url,authorId,imgurl,date,shenhe,bofang) "
			+ "values(#{id},#{biaoti},#{jianjie},#{author},#{url},#{authorId},#{imgurl},#{date},#{shenhe},#{bofang})")
	int InsertVideo(@Param("id")int id,@Param("biaoti")String biaoti,@Param("jianjie")String jianjie,
			@Param("author")String author,@Param("url")String url,@Param("authorId")int authorId,
			@Param("imgurl")String imgurl,@Param("date")String date,@Param("shenhe")String shenhe,@Param("bofang")int bofang);
	/*
	 * 更新视频审核状态
	 * */
	@Update("update v_video set shenhe = #{shenhe} where id = #{id}")
	int UpdateVideo(@Param("shenhe")String shenhe,@Param("id")String id);
	/*
	 * 更新视频审核状态
	 * */
	@Update("update v_video set bofang = #{bofang} where id = #{id}")
	int UpdateVideoBofang(@Param("bofang")int bofang,@Param("id")String id);
	/*
	 * 删除视频
	 * */
	@Delete("delete from v_video where id = #{id}")
	int DeleteVideo(@Param("id")String id);
}
