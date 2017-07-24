package sulbinjung.controller;

import sulbinjung.admin.action.AdminFaqDeleteAction;
import sulbinjung.admin.action.AdminFaqDetailAction;
import sulbinjung.admin.action.AdminFaqListAction;
import sulbinjung.admin.action.AdminFaqUpdateAction;
import sulbinjung.admin.action.AdminFaqUpdateformAction;
import sulbinjung.admin.action.AdminFaqWriteAction;
import sulbinjung.admin.action.AdminFaqWriteformAction;
import sulbinjung.admin.action.AdminLoginAction;

import sulbinjung.admin.action.AdminLogoutAction;
import sulbinjung.admin.action.AdminNoticeListAction;
import sulbinjung.members.action.CheckIdAction;
import sulbinjung.members.action.HomeAction;
import sulbinjung.members.action.MembersDeleteAction;
import sulbinjung.members.action.MembersInfoAction;
import sulbinjung.members.action.MembersUpdateAction;
import sulbinjung.members.action.MembersUpdateformAction;
import sulbinjung.members.action.SigninAction;
import sulbinjung.members.action.SigninFormAction;
import sulbinjung.members.action.SignoutAction;
import sulbinjung.members.action.SignupAction;

public class UserActionFactory {
	private static UserActionFactory factory;
	private UserActionFactory(){}
	//자신의 참조값을 리턴해주는 메소드
	public static UserActionFactory getInstance(){
		if(factory == null){
			factory = new UserActionFactory();
		}
		return factory;
	}
	
	//인자로 전달되는 command를 수행할 Action type 객체를 리턴해주는 메소드
	public Action action(String command){
		Action action = null;
		if(command.equals("/home")){
			action=new HomeAction();
		}else if(command.equals("/admin/login")){
			action=new AdminLoginAction();
		}else if(command.equals("/admin/logout")){
			action=new AdminLogoutAction();
		}else if(command.equals("/admin/notice/list")){
			action=new AdminNoticeListAction();
		}else if(command.equals("/admin/faq/list")){
			action=new AdminFaqListAction();
		}else if(command.equals("/admin/faq/writeform")){
			action=new AdminFaqWriteformAction();
		}else if(command.equals("/admin/faq/write")){
			action=new AdminFaqWriteAction();
		}else if(command.equals("/admin/faq/detail")){
			action=new AdminFaqDetailAction();
		}else if(command.equals("/admin/faq/updateform")){
			action=new AdminFaqUpdateformAction();
		}else if(command.equals("/admin/faq/update")){
			action=new AdminFaqUpdateAction();
		}else if(command.equals("/admin/faq/delete")){
			action=new AdminFaqDeleteAction();
		}else if(command.equals("/members/checkid")){
			action=new CheckIdAction();
		}else if(command.equals("/members/signup")){
			action=new SignupAction();
		}else if(command.equals("/members/signin_form")){	
			action=new SigninFormAction();
		}else if(command.equals("/members/signin")){
			action=new SigninAction();
		}else if(command.equals("/members/signout")){
			action=new SignoutAction();
		}else if(command.equals("/members/private/info")){
			action=new MembersInfoAction();
		}else if(command.equals("/members/private/delete")){
			action=new MembersDeleteAction();
		}else if(command.equals("/members/private/updateform")){
			action=new MembersUpdateformAction();
		}else if(command.equals("/members/private/update")){
			action=new MembersUpdateAction();
		}
		return action;
	}
}