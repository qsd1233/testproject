package trap.model;
import java.util.Date;

public class NoticeDTO {
	private int nId;
	private String nTitle;
	private String nContent;
	private String nNick;
	private Date nDate;
	
	public NoticeDTO() {}

	public NoticeDTO(int nId, String nTitle, String nContent, String nNick, Date nDate) {
		this.nId = nId;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nNick = nNick;
		this.nDate = nDate;
	}

	public int getnId() {return nId;}
	public void setnId(int nId) {this.nId = nId;}
	public String getnTitle() {return nTitle;}
	public void setnTitle(String nTitle) {this.nTitle = nTitle;}
	public String getnContent() {return nContent;}
	public void setnContent(String nContent) {this.nContent = nContent;}
	public String getnNick() {return nNick;}
	public void setnNick(String nNick) {this.nNick = nNick;}
	public Date getnDate() {return nDate;}
	public void setnDate(Date nDate) {this.nDate = nDate;}
	
	
	
}