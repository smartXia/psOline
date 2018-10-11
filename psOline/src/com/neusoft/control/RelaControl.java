package com.neusoft.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.neusoft.service.IRelaService;

@Controller
public class RelaControl {
	@Autowired
	IRelaService iRelaService;
}
