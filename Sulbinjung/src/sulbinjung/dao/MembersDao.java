package sulbinjung.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sulbinjung.dto.MembersDto;
import sulbinjung.util.DbcpBean;
import sulbinjung.dto.MembersDto;

public class MembersDao {
	private static MembersDao dao;

	private MembersDao(){}

	public static MembersDao getInstance(){
		if(dao==null){
			dao = new MembersDao();
		}
		return dao;
	}
		
	//회원정보 저장
	public boolean insert(MembersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "INSERT INTO users "
					+ "(num,id,pwd,name,birth,gender,phone,email,regdate)"
					+ " VALUES(members_seq.NEXTVAL,?,?,?,?,?,?,?,SYSDATE)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getBirth());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getPhone());
			pstmt.setString(7, dto.getEmail());
			flag = pstmt.executeUpdate();
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
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}//insert()
	
	//로그인 아이디, 비밀번호 매칭
	public boolean isValid(MembersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;

		boolean isValid=false;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM members WHERE id=? AND pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			rs=pstmt.executeQuery();
			if(rs.next()){
				isValid=true;
				System.out.println("db성공8");
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
	
	
	
	//회원정보 수정
	public boolean update(MembersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE users SET pwd=?, email=? "
					+ "WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getId());
			flag = pstmt.executeUpdate();
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
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	//회원정보 삭제
	public boolean delete(int num){
		return false;
	}
	
	//회원목록 리턴
	public List<MembersDto> getList(){
			
		//필요한 객체를 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//회원목록을 담을 객체 생성
		List<MembersDto> list = new ArrayList<>();
		
		return list;
	}
	
	
}
