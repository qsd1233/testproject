package trap.model;
import java.util.Date;

public class GalleryDTO {
	private int gId;
	private String gTitle;
	private String gContent;
	private int gRgcount;
	private String gNick;
	private Date gDate;
	
	public GalleryDTO() {}

	public GalleryDTO(int gId, String gTitle, String gContent, int gRgcount, String gNick, Date gDate) {
		this.gId = gId;
		this.gTitle = gTitle;
		this.gContent = gContent;
		this.gRgcount = gRgcount;
		this.gNick = gNick;
		this.gDate = gDate;
	}

	public int getgId() {return gId;}	
	public void setgId(int gId) {this.gId = gId;}
	public String getgTitle() {return gTitle;}
	public void setgTitle(String gTitle) {this.gTitle = gTitle;}
	public String getgContent() {return gContent;}
	public void setgContent(String gContent) {this.gContent = gContent;}
	public int getgRgcount() {return gRgcount;}
	public void setgRgcount(int gRgcount) {this.gRgcount = gRgcount;}
	public String getgNick() {return gNick;}
	public void setgNick(String gNick) {this.gNick = gNick;}
	public Date getgDate() {return gDate;}
	public void setgDate(Date gDate) {this.gDate = gDate;}
	
	
	
	
	
	
}