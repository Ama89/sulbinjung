package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class NoticeDao {
	private static NoticeDao dao;
	private NoticeDao(){}
	public static NoticeDao getInstance(){
		if(dao==null){
			dao=new NoticeDao();
		}
		return dao;
	}
	

}
