package com.neusoft.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.WorksMapper;
import com.neusoft.po.Works;
import com.neusoft.service.IWorksService;
@Service
public class WorksServiceImpl implements IWorksService {
	@Autowired
	WorksMapper worksMapper;
	@Override
	public Works addWorks(Works works) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Works updateWorks(Works works) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Works deleteWorks(Works works) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Works searchWorks(Works works) {
		// TODO Auto-generated method stub
		return null;
	}

}
