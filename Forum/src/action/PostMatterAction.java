package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.*;
import dao.*;
@SuppressWarnings("serial")
public class PostMatterAction extends ActionSupport{
	private Post post;

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String postIdStr = request.getParameter("postId");
		int postId = Integer.parseInt(postIdStr);
		ForumDao forumDao = new ForumDao();
		post = forumDao.findPost(postId);
		return SUCCESS;
	}
}
