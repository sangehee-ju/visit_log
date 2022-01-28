package config;

public class SpringVO {
	/*
	 <db>
	 create table spring_T(
	 no int not null,
	 content varchar(100)
	 ); 
	 */
	private Integer no = null;
	private String content = null;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
