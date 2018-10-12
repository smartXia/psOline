package com.neusoft.service;

import com.neusoft.po.Works;

public interface IWorksService {
	public Works addWorks(Works works);
	public Works updateWorks(Works works);
	public Works deleteWorks(Works works);
	public Works searchWorks(Works works); 
}
