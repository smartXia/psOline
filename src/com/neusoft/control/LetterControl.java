package com.neusoft.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.neusoft.service.ILetterService;

@Controller
public class LetterControl {
	@Autowired
	ILetterService iLetterService;
}
