package Bean;
import java.sql.*;
import Bean.DBCon;

public class UserDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public UserBean readDB_By_UserId(String id) {
		UserBean ubean = new UserBean();
		try {
			con = DBCon.getCon();
			String sql = "select * from USER_INFO where USER_ID = '" + id + "'";
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				ubean.setName(rs.getString("user_name"));
				ubean.setId(rs.getString("user_id"));
				ubean.setPhoneNum(rs.getString("phoneNum"));
				ubean.setRemainedTime(rs.getString("remained_Time"));
				ubean.setPassword(rs.getString("user_password"));
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println("DB 읽기 실패");
		}
		return ubean;
	}
}
