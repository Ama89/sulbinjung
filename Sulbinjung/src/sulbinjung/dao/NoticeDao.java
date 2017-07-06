package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import sulbinjung.dto.NoticeDto;
import sulbinjung.util.DbcpBean;


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
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			//Connection 객체의 참조값 얻어오기
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO NOTICES "
					+ "(num,title,adminjob,contents,writedate,filepath) "
				+ "VALUES(board_guest_seq.NEXTVAL,?,?,?,SYSDATE,?)";
			pstmt=conn.prepareStatement(sql);
			//? 에 값 바인딩하기
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getAdminjob());
			pstmt.setString(3, dto.getContents());
			pstmt.setString(4, dto.getFilepath());
			//sql 문 수행하기
			flag=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				//Connection 객체의 .close() 메소드 호출하면 
				//Connection 객체가 알아서 Pool 에 반납된다. 
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		if(flag>0){
			return true; //작업 성공
		}else{
			return false; //작업 실패
		}
	}//insert()
}
