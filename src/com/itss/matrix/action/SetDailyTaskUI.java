package com.itss.matrix.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

public class SetDailyTaskUI implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		return "results/setDailyTask.jsp";
	}

}