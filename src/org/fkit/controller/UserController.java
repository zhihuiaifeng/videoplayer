package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.VUser;
import org.fkit.domain.Video;
import org.fkit.service.UserService;
import org.fkit.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 澶勭悊鐢ㄦ埛璇锋眰鎺у埗鍣�
 * */
@Controller
public class UserController {
	
	/**
	 * 鑷姩娉ㄥ叆UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;


	/*
	 * 登录页面
	 * */
	@RequestMapping(value="/backdenglu")  
	public ModelAndView denglu(String zhanghao,String password,ModelAndView mv,HttpSession session)
	{
		VUser vuser = userService.login(zhanghao, password);
		if(vuser!=null) {
			session.setAttribute("vuser", vuser);
			mv.setViewName("mainView");
		}else {
			mv.addObject("message", "账户与密码不匹配");
			mv.setViewName("denglu");
		}
		return mv;
	}
	/*
	 * 注册页面
	 * */
	@RequestMapping(value="/backzhuce")
	public String zhuce(String name,String password,String beizhu,String zhanghao,Model model)
	{
		VUser uniqueUser = userService.zhuceService(zhanghao);
		if(uniqueUser!=null) {
			model.addAttribute("result", "账号重复");
			return "zhuce";
		}
		uniqueUser = userService.zhuceService1(name);
		if(uniqueUser!=null) {
			model.addAttribute("result", "昵称重复");
			return "zhuce";
		}
		int result = userService.insertUser("1", name, password, beizhu,zhanghao);
		if(result!=0) {
			return "denglu";
		}else {
			
			return "zhuce";
		}
	}
	/*
	 * 个人页面
	 * */
	@RequestMapping(value="/geren")
	public String geren(Model model,HttpSession session,HttpServletRequest request) {
		  System.out.println("个人页面controller");
		  System.out.println(request.getParameter("gerenid"));
		try {
		    int id = Integer.parseInt(request.getParameter("gerenid"));
		    VUser usergeren = userService.findWithidService(id);
		    System.out.println("当前浏览的个人主页:"+usergeren.getName());
		    model.addAttribute("usergeren", usergeren);
		    List<Video> video_list = videoService.findWithauthorIdService(id);
		    model.addAttribute("video_list", video_list);
		} catch (NumberFormatException e) {
		    e.printStackTrace();
		}
		return "geren";
	}
	/*
	 * 退出
	 * */
	@RequestMapping(value="/tuichu")
	public String tuichu(HttpSession session) {
		session.setAttribute("vuser", null);
		return "mainView";
	}
	/*
	 * 管理中心
	 * */
	@RequestMapping(value="/guanlicontrol")
	public String guanli(Model model,HttpSession session) {
		System.out.println("管理controller");
		//获取当前用户
		VUser vuserNow = (VUser) session.getAttribute("vuser");
		if(vuserNow!=null) {
			System.out.println("当前用户等级");
			System.out.println(vuserNow.getLevel());
			if(vuserNow.getLevel().equals("2")) {
				List<Video> video_list = videoService.findWithShenheService("未审核");
				model.addAttribute("video_list", video_list);
			    return "guanliyuan";
		     }
			else {
			    // 根据id查询视频
			    List<Video> video_list = videoService.findWithauthorIdService(vuserNow.getId());
			    model.addAttribute("video_list", video_list);
			    return "guanli";
			}
		}else {
			return "denglu";
		}
	}
	/*
	 * 更改用户信息
	 * */
	@RequestMapping(value="/genggai")
	public String genggai(HttpSession session,String rename,String repassword ,String rebeizhu,Model model ) {
		VUser user = (VUser)session.getAttribute("vuser");
		if(!rename.equals(user.getName())&&!rename.isEmpty()) { userService.updateNameService(rename,user.getId());} 
		if(!repassword.equals(user.getPassword())&&!repassword.isEmpty()) {userService.updatePasswordService(repassword, user.getId());}
		if(!rebeizhu.equals(user.getBeizhu())&&!rebeizhu.isEmpty()) {userService.updateBeizhuService(rebeizhu,user.getId());}
		VUser user1 = userService.login(user.getZhanghao(),repassword);
		if(user1!=null) {session.setAttribute("vuser", user1);}
		model.addAttribute("gerenid", user.getId());
		return "redirect:/guanlicontrol";
	}
}
