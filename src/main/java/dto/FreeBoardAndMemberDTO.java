package dto;

import java.sql.Timestamp;

public class FreeBoardAndMemberDTO {
	private int seq;
	private String title;
	private String content;
	private String writer;
	private String nickname;
	private int view_count;
	private Timestamp write_date;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public FreeBoardAndMemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FreeBoardAndMemberDTO(int seq, String title, String content, String writer, String nickname, int view_count,
			Timestamp write_date) {
		super();
		this.seq = seq;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.nickname = nickname;
		this.view_count = view_count;
		this.write_date = write_date;
	}
	
}