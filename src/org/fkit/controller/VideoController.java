package org.fkit.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.fkit.domain.VUser;
import org.fkit.domain.Video;
import org.fkit.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 处理视频请求控制器
 * */
@Controller
public class VideoController {
	/**
	 * 自动注入VideoService
	 * */
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;

	/*
	 * 初始化页面
	 * */
	@RequestMapping(value="/")
	public String mainview(Model model,HttpSession session) {
		List<Video> video_list_1 = videoService.findAndOrderService("date");
		System.out.println("查询完毕");
		if(video_list_1.isEmpty())
		{
			System.out.println("没有结果");
		}else {
			System.out.println("查询成功");
		}
		List<Video> video_list_2 = videoService.findAndOrderService("bofang");
		System.out.println(video_list_1.get(1).getImgurl()+"图片路径");
		session.setAttribute("video_list_1", video_list_1);
		session.setAttribute("video_list_2", video_list_2);
		return "mainView";
		
	}
	
	/*
	 * 默认搜索展示页面控制  更多
	 * */
	@RequestMapping(value="/showvideo")
	public String selectShowControl(Model model,HttpServletRequest request) {
		String key = request.getParameter("showkey");
		List<Video> video_list = videoService.findAndOrderService(key);
		model.addAttribute("video_list", video_list);
		System.out.println(key);
		return "selectshow";
	}
	/*
	 * 关键词搜索展示页面控制
	 * */
	@RequestMapping(value="/sousuo")
	public String selectWithKeyControl(Model model,HttpServletRequest request) {
		String dalei[] = {"","广告","宣传片","MV","剧情记录","特殊摄影","动画","创意混剪","影视","Vlog"}; 
		String key=request.getParameter("key");
		List<Video> video_list =null;
		int newid=0;
		int number=0;
        if (request.getParameter("classnumber")!=null) {
        	try {number = Integer.parseInt(request.getParameter("classnumber"));} 
    		catch (NumberFormatException e) { e.printStackTrace();}
        	video_list = videoService.findWithKeyService(dalei[number]);
        	model.addAttribute("video_list", video_list);
    		System.out.println(dalei[number]);
    		return "selectshow";
		}
		try {newid = Integer.parseInt(key);} 
		catch (NumberFormatException e) { e.printStackTrace();}
		video_list = videoService.findWithIdService(newid);
		if(video_list.isEmpty()) {
			video_list = videoService.findWithKeyService(key);
			System.out.println("关键词搜索");
		}
		model.addAttribute("video_list", video_list);
		System.out.println(key);
		return "selectshow";
	}
	/*
	 * 删除视频
	 * */
	@RequestMapping(value="/deletevideo")
	public String deletevideoControl(Model model,HttpServletRequest request) {
		System.out.println("开始删除视频");
		    int deleteFlag = videoService.DeleteVideoService(request.getParameter("deleteId"));
		    System.out.println("删除视频id"+request.getParameter("delelteId"));
		    System.out.println("删除视频结果"+deleteFlag);
			return "redirect:/guanlicontrol";
	}
	/*
	 * 审核视频
	 * */
	@RequestMapping(value="/updatevideo")
	public String updatevideoControl(Model model,HttpServletRequest request) {
		    int updateFlag = videoService.UpdateVideoService("过审", request.getParameter("updateId"));
			return "redirect:/guanlicontrol";
	}
	/*
	 * 视频播放控制
	 * */
	@RequestMapping(value="/videoplaycontrol")
	public String playvideoControl(Model model,HttpServletRequest request) {
		System.out.println("开始播放视频");
		System.out.println("开始增加播放数");
		videoService.UpdateVideoBofangService(request.getParameter("playvideoid"));
		System.out.println("结束增加播放数");
		int newid=0;
		System.out.println(request.getParameter("playvideoid"));
		try {newid = Integer.parseInt(request.getParameter("playvideoid"));System.out.println(newid);} 
		catch (NumberFormatException e) { e.printStackTrace();}
	    List<Video> video_list = videoService.findWithIdService(newid);
	    Video play_video = video_list.get(0);
	    model.addAttribute("play_video", play_video);
	    return "videoplay";
	}
	
		/*
		 * 页面跳转控制
	 * */
	@RequestMapping(value="/tiaozhuan")
	public String tiaozhuanControl(Model model,@RequestParam("yemian")String yemian,HttpServletRequest request) {
		if(yemian.equals("mainView")) {
			return "redirect:/";
		}
		return yemian;
	}
}
