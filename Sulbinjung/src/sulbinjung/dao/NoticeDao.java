package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sulbinjung.dto.AdminDto;
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
	public boolean insert(NoticeDto dto,AdminDto dto2){
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			//Connection 객체의 참조값 얻어오기
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO NOTICES "
					+ "(num,title,adminnum,contents,writedate,filepath) "
				+ "VALUES(notices_seq.NEXTVAL,?,?,?,SYSDATE,?)";
		
			pstmt=conn.prepareStatement(sql);
			//? 에 값 바인딩하기
			pstmt.setString(1, dto.getTitle());
			pstmt.setInt(2, dto.getAdminnum());
			pstmt.setString(3, dto.getContents());
			pstmt.setString(4, dto.getFilepath());
			System.out.println(dto.getContents());
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
	
	//글목록을 리턴해주는 메소드
	public List<NoticeDto> getList(){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<NoticeDto> list=new ArrayList<NoticeDto>();
		try{
			conn=new DbcpBean().getConn();
			String sql="SELECT n.num,a.job,title,hit,TO_CHAR(writedate,'YYYY.MM.DD AM HH:MI') writedate, contents, filepath"
					+ " FROM notices n, admins a"
					+ " WHERE n.adminnum=a.num"
					+ " ORDER BY num DESC";
			pstmt=conn.prepareStatement(sql);
			//sql 문 수행하고 결과셋 받아오기 
			rs=pstmt.executeQuery();
			while(rs.next()){
				int num=rs.getInt("num");
				String adminjob=rs.getString("job");
				String title=rs.getString("title");
				int hit=rs.getInt("hit");
				String writedate=rs.getString("writedate");
				String contents=rs.getString("contents");
				String filepath=rs.getString("filepath");
				//글정보를 BoardDto 에 담아서
				NoticeDto dto=new NoticeDto();
				dto.setNum(num);
				dto.setAdminjob(adminjob);
				dto.setTitle(title);
				dto.setHit(hit);
				dto.setWritedate(writedate);
				dto.setContents(contents);
				dto.setFilepath(filepath);
				//List<BoardDto> 객체에 저장한다.
				list.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		//글목록을 리턴해준다. 
		return list;
	}//getList()	
	
	
	
}
