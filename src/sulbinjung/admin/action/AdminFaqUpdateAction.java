package sulbinjung.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.FaqDao;
import sulbinjung.dto.FaqDto;

public class AdminFaqUpdateAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int num=Integer.parseInt(request.getParameter("num"));
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		
		FaqDto dto=new FaqDto();
		dto.setNum(num);
		dto.setTitle(title);
		dto.setContents(contents);
		FaqDao.getInstance().update(dto);
		request.setAttribute("num", num);
		return new ActionForward("/views/admin/faq/update.jsp");
	}

}
