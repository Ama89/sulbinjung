package sulbinjung.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.AdminDao;
import sulbinjung.dto.AdminDto;

public class AdminLoginAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.println(id);
		System.out.println(pwd);
		AdminDto dto=new AdminDto();
		dto.setId(id);
		dto.setPwd(pwd);
		boolean isValid=AdminDao.getInstance().isValid(dto);
		if(isValid){//유효한 경우 
			//로그인 처리를 해준다. 
			request.getSession().setAttribute("id", id);
			return new ActionForward("/views/admin/index.jsp");
		}else{//유효하지 않은 경우 
			return new ActionForward("/views/admin/login.jsp");
		}		
		
	}

}
