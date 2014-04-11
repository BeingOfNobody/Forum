package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.*;
import dao.*;

@SuppressWarnings("serial")
public class PersonalManageAction extends ActionSupport{

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		ForumDao forumDao = new ForumDao();
		User user2 = (User)session.getAttribute("loginUser");
		user2.setUserNickname(user.getUserNickname());
		user2.setUserBirthday(user.getUserBirthday());
		user2.setUserEmail(user.getUserEmail());
		user2.setUserRemark(user.getUserRemark());
		user2.setSex(user.getSex());
		forumDao.updateUser(user2);
		return SUCCESS;
	}

}
