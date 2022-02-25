package models;

public class Trade {
	protected int sid;
	String stitle;
	String sdescription;
	String simage;
	
	public Trade() {
	}
	public Trade(int sid, String stitle, String sdescription, String simage) {
		this.sid=sid;
		this.stitle=stitle;
		this.sdescription=sdescription;
		this.simage=simage;
	}
	public int getId() {
		return sid;
	}
	public void setId(int sid) {
		this.sid=sid;
	}
	public String getTitle() {
		return stitle;
	}
	public void setTitle(String stitle) {
		this.stitle=stitle;
	}
	public String getDescription() {
		return stitle;
	}
	public void setDescription(String sdescription) {
		this.sdescription=sdescription;
	}
	public String getImage() {
		return simage;
	}
	public void setImage(String simage) {
		this.simage=simage;
	}
}
