package org.fkit.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.fkit.domain.VUser;
import org.fkit.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import converVideo.Contants;
import converVideo.ConverVideoUtils;


@Controller
public class UpLoadController {
	/**
	 * 自动注入VideoService
	 * */
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;

	
	@RequestMapping(value="upLoadVideo")
	public String uploadflie_Video(
			@RequestParam("file") CommonsMultipartFile file,
			@RequestParam("biaoti") String biaoti,
			@RequestParam("jianjie") String jianjie,
			HttpServletRequest req, HttpServletRequest request,HttpSession session) {
		if(file.getSize()!=0)
		{
			//System.out.println("文件上传");
			//String realPath =  request.getSession().getServletContext().getRealPath("/upload");  
            //System.out.println("文件被保存到："+realPath);
            //System.out.println(file.getOriginalFilename());
			//上传的多格式的视频文件-作为临时路径保存，转码以后删除-路径不能写//
			Contants contants = new Contants();
			String path = contants.videofolder;
			File TempFile = new File(path);
			if (TempFile.exists()) {
				if (TempFile.isDirectory()) {
					System.out.println("该文件夹存在。");
				}else {
					 System.out.println("同名的文件存在，不能创建文件夹。");
				}
			}else {
				 System.out.println("文件夹不存在，创建该文件夹。");
				 TempFile.mkdir();
			}
			// 获取上传时候的文件名
			String filename = file.getOriginalFilename();
			
			// 获取文件后缀名
			String filename_extension = filename.substring(filename
					.lastIndexOf(".") + 1);
			System.out.println("视频的后缀名:"+filename_extension);
			
			//时间戳做新的文件名，避免中文乱码-重新生成filename
			long filename1 = new Date().getTime();
			filename = Long.toString(filename1)+"."+filename_extension;
			
			//去掉后缀的文件名
			String filename2 = filename.substring(0, filename.lastIndexOf("."));
			System.out.println("视频名为:"+filename2);
			
			//源视频地址+重命名后的视频名+视频后缀
			String yuanPATH =(path+filename);  
			
			System.out.println("视频的完整文件名1:"+filename);
			System.out.println("源视频路径为:"+yuanPATH);
			
			//上传到本地磁盘/服务器
			try {
				System.out.println("写入本地磁盘/服务器");
				InputStream is = file.getInputStream();
				OutputStream os = new FileOutputStream(new File(path, filename));
				int len = 0;
				byte[] buffer = new byte[2048];
				
				while ((len = is.read(buffer)) != -1) {
					os.write(buffer, 0, len);
				}
				os.close();
				os.flush();
				is.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ConverVideoUtils c = new ConverVideoUtils(yuanPATH);
			System.out.println("新建转码工具类对象");
			c.beginConver("mp4", true);
			
			//删除临时文件
			File file2 = new File(path);
			 if (!file2.exists()) {
		       System.out.println("没有该文件");
		       }
		     if (!file2.isDirectory()) {
		    	   System.out.println("没有该文件夹");
		       }
		     String[] tempList = file2.list();
		     File temp = null;
		     for (int i = 0; i < tempList.length; i++) {
		          if (path.endsWith(File.separator)) {
		             temp = new File(path + tempList[i]);
		          } else {
		              temp = new File(path + File.separator + tempList[i]);
		          }
		          if (temp.isFile() || temp.isDirectory()) {
		             temp.delete();		//删除文件夹里面的文件
		          }
		        }
		       System.out.println("所有的临时视频文件删除成功");
		       
		       //插入视频数据库
		       //--代码--
		       VUser vuser = (VUser)session.getAttribute("vuser");
		       String url = "/video/finishvideo/"+filename1+".mp4";
		       String imgurl = "/video/finishimg/"+filename1+".jpg";
		       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		       String date = sdf.format(filename1);  
		       int insertFlag = videoService.InsertVideoService((int)filename1, biaoti, jianjie, vuser.getName(), url, vuser.getId(), imgurl, date, "未审核", 0);
		       if(insertFlag!=0) {
		    	   System.out.println("插入成功");
		       }else {
		    	   System.out.println("插入失败");
		       }
		}
		return "guanli";
	}
	
	/*
	 * 下载视频
	 * */
	@RequestMapping("/downloadvideo")
	   public String Download(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
//		        if(session.getAttribute("vuser")==null ) {
//		        	return "denglu";
//		        }
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
				response.setContentType("multipart/form-data");
				
				//String downloadvideoid = request.getParameter("downloadvideoid");
				//String fileName= downloadvideoid+".mp4";
				String url = request.getParameter("downloadurl");
				String fileName= url.substring(url.lastIndexOf('/')+1);
		  		System.out.println(fileName);
				response.setHeader("Content-Disposition", "attachment;fileName="+ fileName);
				String path="D:/TestVideo/finishvideo/";   //使用Contants中的targetfolder属性的值
				try {
					InputStream inputStream = new FileInputStream(new File(path+ fileName));
					System.out.println(path+ fileName);

					OutputStream os = response.getOutputStream();
					byte[] b = new byte[2048];
					int length;
					while ((length = inputStream.read(b)) > 0) {
						os.write(b, 0, length);
					}
					os.close();
					inputStream.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
		            //  返回值要注意，要不然就出现下面这句错误！
		            //java+getOutputStream() has already been called for this response
				return null;
			}
	
}
