package trap.model;

import java.time.LocalDate;

public class TrapReplyGalleryDTO {
	private int rgId;
	private int rgGid;
	private String rgNick;
	private String rgContent;
	private LocalDate rgDate;
	
	public TrapReplyGalleryDTO(int rgId, int rgGid, String rgNick, String rgContent, LocalDate rgDate) {
		this.rgId = rgId;
		this.rgGid = rgGid;
		this.rgNick = rgNick;
		this.rgContent = rgContent;
		this.rgDate = rgDate;
	}
	public int getRgId() {return rgId;}
	public void setRgId(int rgId) {this.rgId = rgId;}
	public int getRgGid() {return rgGid;}
	public void setRgGid(int rgGid) {this.rgGid = rgGid;}
	public String getRgNick() {return rgNick;}
	public void setRgNick(String rgNick) {this.rgNick = rgNick;}
	public String getRgContent() {return rgContent;}
	public void setRgContent(String rgContent) {this.rgContent = rgContent;}
	public LocalDate getRgDate() {return rgDate;}
	public void setRgDate(LocalDate rgDate) {this.rgDate = rgDate;}
		
}
