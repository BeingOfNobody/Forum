package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.*;
import dao.*;
@SuppressWarnings("serial")
public class EnrollAction extends ActionSupport{

	private User user;
	private String userRePassword;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getUserRePassword() {
		return userRePassword;
	}

	public void setUserRePassword(String userRePassword) {
		this.userRePassword = userRePassword;
	}

	public String execute(){
		if(user != null){
			user.setUserPoints(0);
			ForumDao forumDao = new ForumDao();
			forumDao.saveUser(user);
		}
		return SUCCESS;
	}
	
	public void validate(){
		ForumDao forumDao = new ForumDao();
		boolean flag = forumDao.judgeUserName(user.getUserName());
		if(flag){
			addFieldError("user.userName", "用户名已经存在！");
		}
		if(!userRePassword.equals(user.getUserPassword()) ){
			addFieldError("userRePassword", "两次输入的密码不一致！");
		}
	}
}
