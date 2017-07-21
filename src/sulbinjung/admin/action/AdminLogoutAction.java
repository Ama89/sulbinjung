package sulbinjung.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;

public class AdminLogoutAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();

		return new ActionForward("/views/admins/logout.jsp");
	}

}
