package com.neusoft.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.CommentMapper;
import com.neusoft.po.Comment;
import com.neusoft.service.ICommentService;
@Service
public class CommentServiceImpl implements ICommentService{
	@Autowired
	CommentMapper commentMapper;
	@Override
	public Comment addComment(Comment comment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comment updateComment(Comment comment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comment deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Comment searchComment(Comment comment) {
		// TODO Auto-generated method stub
		return null;
	}

}
