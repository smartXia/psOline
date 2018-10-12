package com.neusoft.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.neusoft.service.IWorksService;

@Controller
public class WorksControl {
	@Autowired 
	IWorksService iWorksService;
}
