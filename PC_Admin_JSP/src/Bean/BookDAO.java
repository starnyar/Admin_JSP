package Bean;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import Bean.DBCon;


public class BookDAO {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public List<BookBean> readDB() {
		List<BookBean> list = new ArrayList<BookBean>();
		try {
			con = DBCon.getCon();
			String sql = "Select a.PC_NUM, USER_ID, a.START_TIME, a.END_TIME, u.USER_NAME,"
								+ " a.Payment from Account_Book a natural join USER_INFO u";
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			SimpleDateFormat SDF = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
			
			while(rs.next()) {
				BookBean bbean = new BookBean();
				
				Date st = new Date(rs.getLong("START_TIME"));
				Date et = new Date(rs.getLong("END_TIME"));
				
				bbean.setPc_Num(rs.getString("PC_NUM"));
				bbean.setUser_Id(rs.getString("USER_ID"));
				bbean.setUser_Name(rs.getString("USER_NAME"));
				bbean.setStarted_Time(SDF.format(st));
				bbean.setEnded_Time(SDF.format(et));
				bbean.setPayment(rs.getInt("PAYMENT"));
				list.add(bbean);
			}
		} catch (Exception e) {
				System.out.println("ACCOUNT_BOOK ReadDB 오류");
		} finally {
			DBCon.close(con, ps, rs);
		}
		
		return list;
	}
	
}
