package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Video;
import org.fkit.mapper.VideoMapper;
import org.fkit.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Book服务层接口实现类
 * @Service("videoService")用于将当前类注释为一个Spring的bean，名为videoService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("videoService")
public class VideoServiceImpl implements VideoService {
	/**
	 * 自动注入VideoMapper
	 * */
	@Autowired
	private VideoMapper videoMapper;

	@Override
	public List<Video> findWithKeyService(String key) {
		// TODO Auto-generated method stub
		return videoMapper.findWithKey(key);
	}

	@Override
	public List<Video> findWithIdService(int id) {
		// TODO Auto-generated method stub
		return videoMapper.findWithId(id);
	}

	@Override
	public int InsertVideoService(int id,String biaoti, String jianjie,String author,String url,int authorId,
			                      String imgurl,String date,String shenhe,int bofang) {
		// TODO Auto-generated method stub
		return videoMapper.InsertVideo(id,biaoti, jianjie,author,url, authorId, imgurl, date, shenhe, bofang);
	}

	@Override
	public int DeleteVideoService(String id) {
		// TODO Auto-generated method stub
		return videoMapper.DeleteVideo(id);
	}

	@Override
	public int UpdateVideoService(String shenhe, String id) {
		// TODO Auto-generated method stub
		return videoMapper.UpdateVideo(shenhe, id);
	}

	@Override
	public List<Video> findAndOrderService(String key) {
		// TODO Auto-generated method stub
		return videoMapper.findAndOrder(key);
	}

	@Override
	public List<Video> findWithauthorIdService(int authorId) {
		// TODO Auto-generated method stub
		return videoMapper.findWithauthorId(authorId);
	}

	@Override
	public List<Video> findWithShenheService(String shenhe) {
		// TODO Auto-generated method stub
		return videoMapper.findWithShenhe(shenhe);
	}

	@Override
	public int UpdateVideoBofangService( String id) {
		// TODO Auto-generated method stub
		int newid=0;
		try {newid = Integer.parseInt(id);} 
		catch (NumberFormatException e) { e.printStackTrace();}
		List<Video> video = videoMapper.findWithId(newid);
		int bofang = video.get(0).getBofang()+1;
		return videoMapper.UpdateVideoBofang(bofang, id);
	}

}
