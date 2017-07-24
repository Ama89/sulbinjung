package sulbinjung.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.FaqDao;
import sulbinjung.dto.FaqDto;


public class AdminFaqWriteAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		FaqDto dto=new FaqDto();
		dto.setTitle(title);
		dto.setContents(contents);
		
		FaqDao.getInstance().insert(dto);
		return new ActionForward("/admin/faq/list.do", true);
	}

}
