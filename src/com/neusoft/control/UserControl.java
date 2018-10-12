package com.neusoft.control;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.po.User;
import com.neusoft.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserControl {
	@Autowired
	IUserService iUserService;

	@RequestMapping(value = "loginByUser", method = RequestMethod.POST)
	public @ResponseBody User loginbyuser(User user, HttpServletResponse response, Model model, HttpSession session) {
		System.out.println(user.getUname());
		System.out.println(user.getUpwd());
		System.out.println("进入判断");
		System.out.println(iUserService.loginByUser(user));
		user = iUserService.loginByUser(user);
		// model.addAttribute("user", user);
		session.setAttribute("user", user);
		System.out.println(user);
		return user;// 返回的是一个对象
	}

	@RequestMapping(value = "userInfo")
	public String userInfo(Model model) {
		// model.addAttribute("user", user);
		// 当对象为空的时候不能用string打印
		return "main";
	}

	@RequestMapping("loginout")
	public String loginout(Model model, User user, HttpSession session) {
		session.invalidate();
		return "main";
	}

/*	@RequestMapping("registerUser")
	public String registerUser(User user, Model model, HttpServletResponse response) {

		return "loginByUser";
	}*/

	@RequestMapping(value = "uesrRegister", method = RequestMethod.POST)
	public @ResponseBody User userRegister(User user, HttpSession session) {
		// 第一步验证是否存在的值返回的值为空提示非法插入
		// 登录为何直接使用：原因直接返回对象对象是非null就可以插入
		// 第二部直接插入值
		// iUserService.userRegister(users);
		// 先查找是否是注册了的，返回的对象是user 类型为null就可以插入，直接验证是否存在手机号存
		System.out.println(user.toString());
		// 判断是否存在name或者其他
		List<User> usersListvalte = iUserService.volitelogin(user);
		int v = usersListvalte.size();
		if (v == 0) {// 可以直接插入
			System.out.println("已经验证数据库为空可以插入");
			System.out.println(user.toString());
			iUserService.addUser(user);
			user = iUserService.loginByUser(user);
			session.setAttribute("users", user);
			return user;
		} else {// 返回空值证明已经存在
			System.out.println("不可以插入");
			return null;
		}

	}
	@RequestMapping(value="userphoto", method = RequestMethod.POST)
	public String userphoto(Model model, User user,HttpSession session)
			throws IllegalStateException, IOException {
		String sqlPath = null;
		// 定义文件保存的本地路径
		String localPath = "D:\\File2\\images\\";
		// 定义 文件名
		String filename = null;
		if (!user.getFile().isEmpty()) {
			// 生成uuid作为文件名称
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			// 获得文件类型（可以判断如果不是图片，禁止上传）
			String contentType = user.getFile().getContentType();
			// 获得文件后缀名
			String suffixName = contentType
					.substring(contentType.indexOf("/") + 1);
			// 得到 文件名
			filename = uuid + "." + suffixName;
			System.out.println(filename);
			// 文件保存路径
			user.getFile().transferTo(new File(localPath + filename));
		}
		// 把图片的相对路径保存至数据库
		sqlPath = "/images/" + filename;
		System.out.println(sqlPath);
		user.setLogo(sqlPath);
		System.out.println(user.getLogo());
		iUserService.updateUser(user);
		return "main";

	}
	/*@RequestMapping(value="userInfoUpdate")
	public String userInfoUpdate(Model model, User users,HttpSession session) {
		System.out.println(users.toString());
		iUserService.updateUser(users);
		//model.addAttribute("users", users);
		users = iUserService.loginByUser(users);//重新查找
		session.setAttribute("users", users);
		return "main";
	}*/
}