package sulbinjung.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.FaqDao;
import sulbinjung.dto.FaqDto;

public class AdminFaqDetailAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int num=Integer.parseInt(request.getParameter("num"));
		FaqDto dto=FaqDao.getInstance().getData(num);
		
		request.setAttribute("dto", dto);
		return new ActionForward("/views/admin/faq/detail.jsp");
	}

}
