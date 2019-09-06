package trap.model;
import java.time.LocalDate;

public class GalleryDTO {
	private int g_id;
	private String g_title;
	private String g_content;
	private int g_rgcount;
	private String g_nick;
	private LocalDate g_date;
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getG_title() {
		return g_title;
	}
	public void setG_title(String g_title) {
		this.g_title = g_title;
	}
	public String getG_content() {
		return g_content;
	}
	public void setG_content(String g_content) {
		this.g_content = g_content;
	}
	public int getG_rgcount() {
		return g_rgcount;
	}
	public void setG_rgcount(int g_rgcount) {
		this.g_rgcount = g_rgcount;
	}
	public String getG_nick() {
		return g_nick;
	}
	public void setG_nick(String g_nick) {
		this.g_nick = g_nick;
	}
	public LocalDate getG_date() {
		return g_date;
	}
	public void setG_date(LocalDate g_date) {
		this.g_date = g_date;
	}
	
	@Override
	public String toString() {
		return "GalleryDTO [g_id=" + g_id + ", g_title=" + g_title + ", g_content=" + g_content + ", g_rgcount="
				+ g_rgcount + ", g_nick=" + g_nick + ", g_date=" + g_date + "]";
	}
	
	public GalleryDTO(int g_id, String g_title, String g_content, int g_rgcount, String g_nick, LocalDate g_date) {
		super();
		this.g_id = g_id;
		this.g_title = g_title;
		this.g_content = g_content;
		this.g_rgcount = g_rgcount;
		this.g_nick = g_nick;
		this.g_date = g_date;
	}
}