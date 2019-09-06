package trap.model;
import java.time.LocalDate;

public class NoticeDTO {
	private int n_id;
	private String n_title;
	private String n_content;
	private String n_nick;
	private LocalDate n_date;
	
	public int getN_id() {
		return n_id;
	}
	public void setN_id(int n_id) {
		this.n_id = n_id;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_nick() {
		return n_nick;
	}
	public void setN_nick(String n_nick) {
		this.n_nick = n_nick;
	}
	public LocalDate getN_date() {
		return n_date;
	}
	public void setN_date(LocalDate n_date) {
		this.n_date = n_date;
	}
	
	public NoticeDTO(int n_id, String n_title, String n_content, String n_nick, LocalDate n_date) {
		super();
		this.n_id = n_id;
		this.n_title = n_title;
		this.n_content = n_content;
		this.n_nick = n_nick;
		this.n_date = n_date;
	}
	
	@Override
	public String toString() {
		return "NoticeDTO [n_id=" + n_id + ", n_title=" + n_title + ", n_content=" + n_content + ", n_nick=" + n_nick
				+ ", n_date=" + n_date + "]";
	}
}