package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sulbinjung.dto.AdminDto;
import sulbinjung.dto.MembersDto;
import sulbinjung.util.DbcpBean;

public class AdminDao {
	private static AdminDao dao;

	private AdminDao(){}

	public static AdminDao getInstance(){
		if(dao==null){
			dao = new AdminDao();
		}
		return dao;
	}

	
	//인자로 전달된 번호에 해당하는 회원정보를 리턴해주는 메소드
	public AdminDto getData(String id){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		AdminDto dto=null;
		try{
			conn=new DbcpBean().getConn();
			String sql="SELECT num,id,pwd,name,job"
					+ " FROM admins WHERE id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//SELECT 문 수행하고 결과값을 ResultSet 으로 받아오기
			rs=pstmt.executeQuery();
			//SELECT 된 결과가 있다면 cursor 를 한칸 내려서
			if(rs.next()){
				//커서가 위치한곳의 정보를 읽어온다.
				int	   num=rs.getInt("num");
				String pwd=rs.getString("pwd");
				String name=rs.getString("name");
				String job=rs.getString("job");
				//MemberDto 객체를 생성해서 담는다. 
				dto=new AdminDto(num, id, pwd, name, job);
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
		//회원 한명의 정보가 담겨 있는 MemberDto 객체를 리턴해준다.
		return dto;
	}	
	
	//로그인 아이디, 비밀번호 매칭
	public boolean isValid(AdminDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;

		boolean isValid=false;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM admins WHERE id=? AND pwd=?";
			System.out.println("1");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			
			System.out.println( dto.getId());
			System.out.println( dto.getPwd());
			System.out.println(pstmt.toString());
			
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				isValid=true;
				System.out.println("db성공8");
			}else{
				System.out.println("결과값없음");
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return isValid;
	}//isValid()	
	
}
