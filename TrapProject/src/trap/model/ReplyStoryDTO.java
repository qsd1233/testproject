package trap.model;

import java.time.LocalDate;

public class ReplyStoryDTO {
	private int rsId;
	private int rsGid;
	private String rsNick;
	private String rsContent;
	private LocalDate rsDate;
	
	public ReplyStoryDTO() {}

	public ReplyStoryDTO(int rsId, int rsGid, String rsNick, String rsContent, LocalDate rsDate) {
		this.rsId = rsId;
		this.rsGid = rsGid;
		this.rsNick = rsNick;
		this.rsContent = rsContent;
		this.rsDate = rsDate;
	}

	public int getRsId() {return rsId;}
	public void setRsId(int rsId) {this.rsId = rsId;}
	public int getRsGid() {return rsGid;}
	public void setRsGid(int rsGid) {this.rsGid = rsGid;}
	public String getRsNick() {return rsNick;}
	public void setRsNick(String rsNick) {this.rsNick = rsNick;}
	public String getRsContent() {return rsContent;}
	public void setRsContent(String rsContent) {this.rsContent = rsContent;}
	public LocalDate getRsDate() {return rsDate;}
	public void setRsDate(LocalDate rsDate) {this.rsDate = rsDate;}
	
			
		
}
