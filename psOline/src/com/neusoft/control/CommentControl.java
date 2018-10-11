/**
 * 
 */
package com.neusoft.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.neusoft.service.ICommentService;

/**
 * @author Administrator
 *
 */
@Controller
public class CommentControl {
	@Autowired
	ICommentService iCommentService;
	/**
	 * 这个是展示单独登录的信息在localhref:中调用 返回的结果是index界面
	 * 
	 * @param admin
	 * @param model
	 * @return
	 */


}
