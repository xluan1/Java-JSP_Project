package models;

public class UserAccount {
	public static final String GENDER_MALE="M";
	public static final String GENDER_FEMALE="F";
	private String userName;
	private String gender;
	private String password;
	private String email;
	private String address;
	private String name;
	private String first_name;
	private String last_name;
	private String image;
	
	public UserAccount() {
		
	}
	public UserAccount(String userName, String password, String gender) {
		this.userName = userName;
		this.password=password;
		this.gender=gender;
	}
	public UserAccount(String gender, String email, String address, String name) {
		this.gender = gender;
		this.email = email;
		this.address = address;
		this.name = name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName=userName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender=gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getFirstName(String first_name) {
		return first_name;
	}
	public void setFirstName(String first_name) {
		this.first_name=first_name;
	}
	public String getLastName() {
		return last_name;
	}
	public void setLastName(String last_name) {
		this.last_name=last_name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image=image;
	}
}
