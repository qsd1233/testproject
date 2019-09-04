package trap.dto;

import java.time.LocalDate;

public class TrapReplyQuestionDTO {
	private int rqId;
	private int rqGid;
	private String rqNick;
	private String rqContent;
	private LocalDate rqDate;
	
	public TrapReplyQuestionDTO(int rqId, int rqGid, String rqNick, String rqContent, LocalDate rqDate) {
		super();
		this.rqId = rqId;
		this.rqGid = rqGid;
		this.rqNick = rqNick;
		this.rqContent = rqContent;
		this.rqDate = rqDate;
	}

	public int getRqId() {return rqId;}
	public void setRqId(int rqId) {this.rqId = rqId;}
	public int getRqGid() {return rqGid;}
	public void setRqGid(int rqGid) {this.rqGid = rqGid;}
	public String getRqNick() {return rqNick;}
	public void setRqNick(String rqNick) {this.rqNick = rqNick;}
	public String getRqContent() {return rqContent;}
	public void setRqContent(String rqContent) {this.rqContent = rqContent;}
	public LocalDate getRqDate() {return rqDate;}
	public void setRqDate(LocalDate rqDate) {this.rqDate = rqDate;}	
	
}
