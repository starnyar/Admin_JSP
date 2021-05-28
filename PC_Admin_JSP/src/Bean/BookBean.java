package Bean;

public class BookBean {
	static long start_Time;
	static long end_Time;
	private String started_Time;
	private String ended_Time;
	private String pc_Num = "1";
	private String user_Id;
	private long payment;
	private String user_Name;
	
	public BookBean(){}

	public static long getStart_Time() {
		return start_Time;
	}

	public static void setStart_Time(long start_Time) {
		BookBean.start_Time = start_Time;
	}

	public static long getEnd_Time() {
		return end_Time;
	}

	public static void setEnd_Time(long end_Time) {
		BookBean.end_Time = end_Time;
	}
	
	
	public String getStarted_Time() {
		return started_Time;
	}

	public void setStarted_Time(String started_Time) {
		this.started_Time = started_Time;
	}

	public String getEnded_Time() {
		return ended_Time;
	}

	public void setEnded_Time(String ended_Time) {
		this.ended_Time = ended_Time;
	}

	public String getPc_Num() {
		return pc_Num;
	}

	public void setPc_Num(String pc_Num) {
		this.pc_Num = pc_Num;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public long getPayment() {
		return payment;
	}

	public void setPayment(long payment) {
		this.payment = payment;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}
	
	
	
	
}


