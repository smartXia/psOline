package com.neusoft.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.CommentMapper;
import com.neusoft.po.Letter;
import com.neusoft.service.ILetterService;
@Service
public class LetterServiceImpl implements ILetterService {
	@Autowired
	CommentMapper commentMapper;

	@Override
	public Letter addLetter(Letter letter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter updateLetter(Letter letter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter deleteLetter(Letter letter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Letter searchLetter(Letter letter) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
