package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sulbinjung.dto.MembersDto;
import sulbinjung.util.DbcpBean;

public class MembersDao {
	private static MembersDao dao;

	private MembersDao(){}

	public static MembersDao getInstance(){
		if(dao==null){
			dao = new MembersDao();
		}
		return dao;
	}	
	
	//인자로 전달된 번호에 해당하는 회원정보를 리턴해주는 메소드
		public MembersDto getData(int num){
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			MembersDto dto=null;
			try{
				conn=new DbcpBean().getConn();
				String sql="SELECT id,pwd,name,birth,email,phone,regdate,gender,isMember"
						+ " FROM members WHERE num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				//SELECT 문 수행하고 결과값을 ResultSet 으로 받아오기
				rs=pstmt.executeQuery();
				//SELECT 된 결과가 있다면 cursor 를 한칸 내려서
				if(rs.next()){
					//커서가 위치한곳의 정보를 읽어온다.
					String id=rs.getString("id");
					String pwd=rs.getString("pwd");
					String name=rs.getString("name");
					String birth=rs.getString("birth");
					String email=rs.getString("email");
					String phone=rs.getString("phone");
					String regdate=rs.getString("regdate");
					String gender=rs.getString("gender");
					boolean isMember=rs.getBoolean("isMember");
					//MemberDto 객체를 생성해서 담는다. 
					dto=new MembersDto(num, id, pwd, name, birth, email, phone, 
							regdate, gender, isMember);
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
		
		
	//회원정보 저장
	public boolean insert(MembersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "INSERT INTO members"
					+ " (num,id,pwd,name,birth,gender,phone,email,regdate)"
					+ " VALUES(members_seq.NEXTVAL,?,?,?,TO_DATE(?, 'rrrr-mm-dd'),?,?,?,SYSDATE)";
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
	
	
	
	//회원정보 수정
	public boolean update(MembersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE members SET pwd=?, email=? "
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
