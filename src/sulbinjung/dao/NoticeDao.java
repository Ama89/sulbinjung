package sulbinjung.dao;

import sulbinjung.dto.NoticeDto;

public class NoticeDao {
	private static NoticeDao dao;
	private NoticeDao(){}
	public static NoticeDao getInstance(){
		if(dao==null){
			dao=new NoticeDao();
		}
		return dao;
	}
	
	//새글을 DB 에 저장하는 메소드
	public boolean insert(NoticeDto dto){
		return false;
	}//insert()
}
