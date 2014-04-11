package action;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.*;
import dao.*;

@SuppressWarnings("serial")
public class UserInformationAction extends ActionSupport{

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String userIdStr = request.getParameter("userId");
		int userId = Integer.parseInt(userIdStr);
		ForumDao forumDao = new ForumDao();
		user = forumDao.findUser(userId);
		return SUCCESS;
	}
}
