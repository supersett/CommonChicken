package com.commonchicken.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.exception.LoginAuthFailException;
import com.commonchicken.service.LoginService;


@Controller
public class LoginController {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
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
	//ȸ������
	@RequestMapping(value = "/sign_in", method = RequestMethod.POST)
	public String singIn(@ModelAttribute MemberDTO member, Model model) throws IllegalStateException, IOException {
		
		
		String uploadDir=context.getServletContext().getRealPath("/WEB-INF/upload");
		
		String origin=member.getFile().getOriginalFilename();
		
		String upload=System.currentTimeMillis()+"";
		
		member.setMemOrigin(origin);
		member.setMemUpload(upload);
		
		member.getFile().transferTo(new File(uploadDir, upload));
		
		loginService.insertMember(member);
		
		return "redirect:/";
				
	}
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Member member, Model model, HttpSession session) {
		if(!member.getId().equals("abc123") || !member.getPasswd().equals("123456")) {//���� ����
			model.addAttribute("message", "���̵� �Ǵ� ��й�ȣ�� Ȯ���� �ּ���.");
			return "session/login_form";
		}
		
		session.setAttribute("loginId", member.getId());
		
		return "session/login_result";
	}
	*/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberDTO member, Model model,HttpSession session) throws LoginAuthFailException{
		//���̵� ���°��
		if(loginService.selectMember(member.getMemEmail()).getMemEmail()==null) {
			throw new LoginAuthFailException();
		}
		//���̵�� �ִµ� ��й�ȣ�� ��ġ���� �ʴ� ���
		if(!loginService.selectMember(member.getMemEmail()).getMemPw().equals(member.getMemPw())) {
			throw new LoginAuthFailException();
		}
		
		
		session.setAttribute("loginId", member.getMemEmail());
		System.out.println("�α��� ����");
		return "redirect:/";
	}
	
	
	@ExceptionHandler(value = LoginAuthFailException.class)
	public String exceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("loginmessage", "���̵� �Ǵ� ��й�ȣ�� �߸� �ԷµǾ����ϴ�.");
		//model.addAttribute("userid", exception.getUserid());
		return "user/login";
	}
	
	
}
