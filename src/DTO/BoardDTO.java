package DTO;

public class BoardDTO {

	private int num;
	private String id;
	private String name;
	private String subject;
	private String content;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public BoardDTO(int num, String id, String name, String subject, String content) {
		super();
		this.num = num;
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.content = content;
	}
	
	public BoardDTO(String id, String name, String subject, String content) {
		super();
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.content = content;
	}

	
}
