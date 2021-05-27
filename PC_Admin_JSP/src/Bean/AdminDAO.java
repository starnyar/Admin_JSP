package Bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Bean.DBCon;


public class AdminDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	
	public List<AdminBean> readDB_By_Name(String name) {
		List<AdminBean> list = new ArrayList<AdminBean>();
		try {
			con = DBCon.getCon();
			String sql = "select * from USER_INFO where USER_NAME = '" + name + "'";
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				AdminBean bean = new AdminBean();
				bean.setName(rs.getString("user_name"));
				bean.setId(rs.getString("user_id"));
				bean.setPhoneNum(rs.getString("phoneNum"));
				bean.setRemainedTime(rs.getString("remained_Time"));
				list.add(bean);
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println("DB 읽기 실패");
		}
		return list;
	}
	
	public AdminBean readDB_By_Id(String id) {
		AdminBean abean = new AdminBean();
		try {
			con = DBCon.getCon();
			String sql = "select * from USER_INFO where USER_ID = '" + id + "'";
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				abean.setName(rs.getString("user_name"));
				abean.setId(rs.getString("user_id"));
				abean.setPhoneNum(rs.getString("phoneNum"));
				abean.setRemainedTime(rs.getString("remained_Time"));
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println("DB 읽기 실패");
		}
		return abean;
	}
	
	public AdminLoginBean readDB_By_AdminId(String id) {
		AdminLoginBean abean = new AdminLoginBean();
		try {
			con = DBCon.getCon();
			String sql = "select * from ADMIN_INFO where ADMIN_ID = '" + id + "'";
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				abean.setAdminId(rs.getString("admin_id"));
				abean.setAdminPassword(rs.getString("Admin_Password"));
				abean.setAdminName(rs.getString("admin_name"));
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println("DB 읽기 실패");
		}
		return abean;
	}
	
	public List<AdminBean> readDB_All() {
		List<AdminBean> list = new ArrayList<AdminBean>();
		try {
			con = DBCon.getCon();
			String sql = "select * from USER_INFO";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				AdminBean bean = new AdminBean();
				bean.setName(rs.getString("user_name"));
				bean.setId(rs.getString("user_id"));
				bean.setPhoneNum(rs.getString("phoneNum"));
				bean.setRemainedTime(rs.getString("remained_Time"));
				list.add(bean);
			}
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println("전체 DB 읽기 실패");
		}
		return list;
	}
	
	public boolean checkId(String id)
	{
		boolean result = false;
		try {
			con = DBCon.getCon();
			String sql = "select * from USER_INFO where USER_ID = '" + id + "'";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				result = true;
				System.out.println("이미 존재하는 아이디 입니다.");
			}
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return result;
	}
	
	public void insertDB(AdminBean bean) {
		try {
			int cnt = 0;
			con = DBCon.getCon();
			String sql = "SELECT * FROM USER_INFO WHERE USER_ID = '" + bean.getId() + "'";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(!rs.next()) {
			sql = "INSERT into USER_INFO(USER_NAME, USER_ID, USER_PASSWORD, PHONENUM)";
			sql = sql + " values(?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getId());
			ps.setString(3, bean.getPassword());
			ps.setString(4, bean.getPhoneNum());
			cnt = ps.executeUpdate();
			
			if (cnt > 0)
				System.out.println("데이터가 성공적으로 입력되었습니다.");
			else
				System.out.println("데이터가 입력되지 않았습니다.");
			}else
				System.out.println("아이디가 이미 등록되어 있습니다.");
			
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void deleteDB(String userid) {
		String sql = "DELETE USER_INFO where USER_ID = ?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("RECORD 삭제 오류");
		} finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public void updateDB(AdminBean abean) {
		String sql = "UPDATE USER_INFO"
				+	" SET user_name = ?, phoneNum = ?"
				+	" where user_id = ?";
		
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, abean.getName());
			ps.setString(2, abean.getPhoneNum());
			ps.setString(3, abean.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("updateDB 오류");
		} finally {
			DBCon.close(con, ps, null);
		}
	}
}
