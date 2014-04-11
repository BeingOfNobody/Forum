package entity;

import java.sql.Timestamp;

@SuppressWarnings("serial")
public class Post implements java.io.Serializable {


	private Integer postId;
	private User user;
	private String topic;
	private String matter;
	private Timestamp postTime;

	public Post() {
	}

	public Post(User user, String topic, String matter, Timestamp postTime) {
		this.user = user;
		this.topic = topic;
		this.matter = matter;
		this.postTime = postTime;
	}


	public Integer getPostId() {
		return this.postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTopic() {
		return this.topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getMatter() {
		return this.matter;
	}

	public void setMatter(String matter) {
		this.matter = matter;
	}

	public Timestamp getPostTime() {
		return this.postTime;
	}

	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}

}