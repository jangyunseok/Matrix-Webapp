package com.itss.matrix.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Logout implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		request.getSession().invalidate();
		
		return "controller?cmd=loginUI";
	}

}
