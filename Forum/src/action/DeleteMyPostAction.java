package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.ForumDao;
import entity.*;

@SuppressWarnings("serial")
public class DeleteMyPostAction extends ActionSupport{

	private String pageNumber;
	
	public String getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(String pageNumber) {
		this.pageNumber = pageNumber;
	}

	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String postIdStr = request.getParameter("postId");
		pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null || "".equals(pageNumber.trim())){
			pageNumber = "1";
		}
		int postId = Integer.parseInt(postIdStr);
		ForumDao forumDao = new ForumDao();
		Post post = forumDao.findPost(postId);
		User user = post.getUser();
		user.setUserPoints(user.getUserPoints()-3);
		forumDao.deletePost(post);
		forumDao.updateUser(user);
		return SUCCESS;
	}
}
