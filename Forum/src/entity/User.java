package entity;

import java.sql.Timestamp;

@SuppressWarnings("serial")
public class User implements java.io.Serializable {

	private Integer userId;
	private String userName;
	private String userPassword;
	private String userEmail;
	private String userNickname;
	private Timestamp userBirthday;
	private Integer sex;
	private Integer userPoints;
	private String userRemark;

	public User() {
	}

	public User(String userName, String userPassword, String userEmail,
			String userNickname, Timestamp userBirthday, Integer sex,
			Integer userPoints) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userNickname = userNickname;
		this.userBirthday = userBirthday;
		this.sex = sex;
		this.userPoints = userPoints;
	}

	public User(String userName, String userPassword, String userEmail,
			String userNickname, Timestamp userBirthday, Integer sex,
			Integer userPoints, String userRemark) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userNickname = userNickname;
		this.userBirthday = userBirthday;
		this.sex = sex;
		this.userPoints = userPoints;
		this.userRemark = userRemark;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserNickname() {
		return this.userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public Timestamp getUserBirthday() {
		return this.userBirthday;
	}

	public void setUserBirthday(Timestamp userBirthday) {
		this.userBirthday = userBirthday;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getUserPoints() {
		return this.userPoints;
	}

	public void setUserPoints(Integer userPoints) {
		this.userPoints = userPoints;
	}

	public String getUserRemark() {
		return this.userRemark;
	}

	public void setUserRemark(String userRemark) {
		this.userRemark = userRemark;
	}

}