package model;

public class AboutUser {
	int aboutUserId;
	int userId;
	String nickname;
	String dob;
	String languages;
	String education;
	String occupation;
	String rStatus;
	String website;
	String bio;
	String country;
	String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAboutUserId() {
		return aboutUserId;
	}
	public void setAboutUserId(int aboutUserId) {
		this.aboutUserId = aboutUserId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getLanguages() {
		return languages;
	}
	public void setLanguages(String languages) {
		this.languages = languages;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getrStatus() {
		return rStatus;
	}
	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public AboutUser(int aboutUserId, int userId, String nickname, String dob, String languages,
			String education, String occupation, String rStatus, String website, String bio, String country) {
		super();
		this.aboutUserId = aboutUserId;
		this.userId = userId;
		this.nickname = nickname;
		this.dob = dob;
		this.languages = languages;
		this.education = education;
		this.occupation = occupation;
		this.rStatus = rStatus;
		this.website = website;
		this.bio = bio;
		this.country = country;
	}
	public AboutUser(int userId, String nickname, String bio, String country, String name) {
		super();
		this.userId = userId;
		this.nickname = nickname;
		this.bio = bio;
		this.country = country;
		this.name = name;
	}
	
	
}
