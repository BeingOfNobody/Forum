package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.*;
import dao.*;
@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute(){
		return SUCCESS;
	}
	
	public void validate(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		ForumDao forumDao = new ForumDao();
		if(user != null){
			User user2 = forumDao.judgeUser(user);
			if(user2 != null){
				if(session.getAttribute("loginUser") != null){
					session.removeAttribute("loginUser");
				}
				session.setAttribute("loginUser", user2);
			}else{
				addFieldError("user.userName", "用户名或密码有误！");
			}
		}
	}
	
}
