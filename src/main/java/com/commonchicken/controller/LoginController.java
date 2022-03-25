package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.commonchicken.dto.MemberDTO;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("login","login_value");
		return "user/login";
	}
	
	
	/*
	@RequestMapping(value = "/file_upload", method = RequestMethod.POST)
	public String fileUpload(@ModelAttribute FileBoard fileBoard) throws IllegalStateException, IOException {
		if(fileBoard.getFile().isEmpty()) {
			return "file/file_upload";
		}
	
		String uploadDir=context.getServletContext().getRealPath("/WEB-INF/upload");
		
		//���� ���ϸ��� ��ȯ�޾� ����
		String origin=fileBoard.getFile().getOriginalFilename();
		
		//���ε� ���ϸ��� ������(���� �ý����� Ÿ�ӽ�����)���� ����
		// => ���ε� ó���� ���ϸ��� �ߺ����� �ʵ��� ����
		String upload=System.currentTimeMillis()+"";
		
		//DTO ��ü�� �ʵ尪 ����
		fileBoard.setOrigin(origin);
		fileBoard.setUpload(upload);
		
		fileBoard.getFile().transferTo(new File(uploadDir, upload));
		
		fileBoardService.addFileBoard(fileBoard);
		
		return "redirect:/file_list";
	}
	*/
	@RequestMapping(value = "/sign_in", method = RequestMethod.POST)
	public String singIn(@ModelAttribute MemberDTO member) {
			
		return "redirect:/";
				
	}
	
	
	
	
	
	
	
	
	
}
