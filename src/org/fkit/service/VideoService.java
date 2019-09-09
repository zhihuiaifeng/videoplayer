package org.fkit.service;

import java.util.List;


import org.fkit.domain.Video;

/**
 * Video服务层接口
 * */
public interface VideoService {
	/**
	 * 查询视频
	 * 模糊查询
	 * @return Video对象集合
	 * */
	List<Video> findWithKeyService(String key);
	/*
	 * 查询视频
	 * id查询
	 * @return Video对象集合
	 * */
	List<Video> findWithIdService(int id);
	/*
	 * 根据作者id查询
	 * */
	List<Video> findWithauthorIdService(int authorId);
	/*
	 * 查询结果排序
	 * */
	List<Video> findAndOrderService(String key);
	/*
	 * 插入新视频 
	 * */
	int InsertVideoService(int id,String biaoti,String jianjie,String author,String url,
			int authorId,String imgurl,String date,String shenhe,int bofang);
	/*
	 * 更新视频审核状态
	 * */
	int UpdateVideoService(String shenhe,String id);
	/*
	 * 更新视频播放量
	 * */
	int UpdateVideoBofangService(String id);
	/*
	 * 删除视频
	 * */
	int DeleteVideoService(String id);
	/*
	 * 查询未审核视频
	 * */
	List<Video> findWithShenheService(String shenhe);
}
