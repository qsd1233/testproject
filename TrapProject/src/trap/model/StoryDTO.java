package trap.model;

import java.util.Date;

public class StoryDTO {
	private int sId;
	private String sTitle;
	private String sContent;
	private int sRscount;
	private String sNick;
	private Date sDate;
	
	public StoryDTO() {}

	public StoryDTO(int sId, String sTitle, String sContent, int sRscount, String sNick, Date sDate) {
		this.sId = sId;
		this.sTitle = sTitle;
		this.sContent = sContent;
		this.sRscount = sRscount;
		this.sNick = sNick;
		this.sDate = sDate;
	}

	public int getsId() {return sId;}
	public void setsId(int sId) {this.sId = sId;}
	public String getsTitle() {return sTitle;}
	public void setsTitle(String sTitle) {this.sTitle = sTitle;}
	public String getsContent() {return sContent;}
	public void setsContent(String sContent) {this.sContent = sContent;}
	public int getsRscount() {return sRscount;}
	public void setsRscount(int sRscount) {this.sRscount = sRscount;}
	public String getsNick() {return sNick;}
	public void setsNick(String sNick) {this.sNick = sNick;}
	public Date getsDate() {return sDate;}
	public void setsDate(Date sDate) {this.sDate = sDate;}
	
	
	
	
	
	
	
	
}