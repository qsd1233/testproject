package trap.model;

import java.util.Date;

public class QuestionDTO {
	private int qId;
	private String qTitle;
	private String qContent;
	private int qRqcount;
	private String qNick;
	private Date qDate;
	
	public QuestionDTO() {}

	public QuestionDTO(int qId, String qTitle, String qContent, int qRqcount, String qNick, Date qDate) {
		this.qId = qId;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qRqcount = qRqcount;
		this.qNick = qNick;
		this.qDate = qDate;
	}

	public int getqId() {return qId;}
	public void setqId(int qId) {this.qId = qId;}
	public String getqTitle() {return qTitle;}
	public void setqTitle(String qTitle) {this.qTitle = qTitle;}
	public String getqContent() {return qContent;}
	public void setqContent(String qContent) {this.qContent = qContent;}
	public int getqRqcount() {return qRqcount;}
	public void setqRqcount(int qRqcount) {this.qRqcount = qRqcount;}
	public String getqNick() {return qNick;}
	public void setqNick(String qNick) {this.qNick = qNick;}
	public Date getqDate() {return qDate;}
	public void setqDate(Date qDate) {this.qDate = qDate;}
	
	
	
	
	
	
	
}
