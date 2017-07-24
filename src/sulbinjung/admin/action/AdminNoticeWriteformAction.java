package sulbinjung.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;

public class AdminNoticeWriteformAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		return new ActionForward("/views/admin/notice/writeform.jsp");
	}

}
