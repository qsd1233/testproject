package trap.model;

import java.time.LocalDate;

public class QuestionDTO {
	private int id;
	private String title;
	private String content;
	private int rqcount;
	private String nick;
	private LocalDate date;
	
	public int getId() {return id;}
	public void setId(int id) {this.id = id;}
	public String getTitle() {return title;}
	public void setTitle(String title) {this.title = title;}
	public String getContent() {return content;}
	public void setContent(String content) {this.content = content;}
	public int getRqcount() {return rqcount;}
	public void setRqcount(int rqcount) {this.rqcount = rqcount;}
	public String getNick() {return nick;}
	public void setNick(String nick) {this.nick = nick;}
	public LocalDate getDate() {return date;}
	public void setDate(LocalDate date) {this.date = date;}
	public QuestionDTO(int id, String title, String content, int rqcount, String nick, LocalDate date) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.rqcount = rqcount;
		this.nick = nick;
		this.date = date;
	}
	
}
