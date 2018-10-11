/**
 * 
 */
package com.neusoft.service;

import com.neusoft.po.Comment;

/**
 * @author Administrator
 *
 */
public interface ICommentService {
	public Comment addComment(Comment comment);
	public Comment updateComment(Comment comment);
	public Comment deleteComment(Comment comment);
	public Comment searchComment(Comment comment); 
}
