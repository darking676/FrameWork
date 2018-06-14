package com.bit.controller;

import javax.servlet.http.HttpServletRequest;

import com.bit.model.GuestDao;
import com.bit.utils.BitController;

public class DeleteController implements BitController {

	@Override
	public String execute(HttpServletRequest req) {
		int pk=Integer.parseInt(req.getParameter("idx"));
		GuestDao dao = new GuestDao();
		try {
			if(dao.deleteOne(pk)>0)
			return "redirect:list.do";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:detail.do?idx="+pk;
	}

}
