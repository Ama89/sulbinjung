package sulbinjung.controller;

public class ActionForward {
	//이동경로
	private String path;	
	//리다이렉트 이동여부
	private boolean isRedirect;
	public ActionForward(String path) {
		this.path = path;
	}
	
	public ActionForward(String path, boolean isRedirect) {
		this.path = path;
		this.isRedirect = isRedirect;
	}
	
	public String getPath() {
		return path;
	}
	
	public void setPath(String path){
		this.path = path;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}	
}