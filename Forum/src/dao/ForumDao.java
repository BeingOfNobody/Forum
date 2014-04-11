package dao;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import config.*;
import entity.*;

public class ForumDao {

	private Session session;
	private Query query;
	private Transaction transaction;
	
	public ForumDao(){
	}
	
	/**以下为用户相关方法*/	
	
	//添加一个用户
	public void saveUser(User user){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}
	
	//修改一个用户
	public void updateUser(User user){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.update(user);
		transaction.commit();
		session.close();
	}
	
	//查询一个用户信息
	public User findUser(int userId){
		session = HibernateSessionFactory.getSession();
		User user = (User) session.get("entity.User", userId);
		session.close();
		return user;
	}
	
	//查询一个用户所有的帖子
	@SuppressWarnings("unchecked")
	public List<Post> personalPost(User user,int pageNumber,int pageSize){
		List<Post> personalPost = new ArrayList<Post>();
		session = HibernateSessionFactory.getSession();
		String hql = "from Post as post where post.user.userId = ? order by post.postTime desc";
		query = session.createQuery(hql);
		query.setInteger(0, user.getUserId());
		query.setFirstResult((pageNumber - 1)*pageSize);
		query.setMaxResults(pageSize);
		personalPost = query.list();
		session.close();
		return personalPost;
	}
	
	
	//获取单个用户所有帖子总数
	public int personalPostAmount(User user){
		int personalPostAmount = 0;
		session = HibernateSessionFactory.getSession();
		String hql = "select count(*) from Post as post where post.user.userId = ?";
		query = session.createQuery(hql);
		query.setInteger(0, user.getUserId());
		long  l = (Long)query.uniqueResult();
		personalPostAmount = (int)l;
		session.close();
		return personalPostAmount;
	}
	
	//用户登录检查，根据用户名与密码获取用户
	@SuppressWarnings("unchecked")
	public User judgeUser(User user){
		User user2 = null;
		session = HibernateSessionFactory.getSession();
		String hql = "from User as user where user.userName = ? and user.userPassword = ?";
		query = session.createQuery(hql);
		query.setString(0, user.getUserName());
		query.setString(1, user.getUserPassword());
		Iterator<User> iterator = query.list().iterator();
		if(iterator.hasNext()){
			user2 = iterator.next();
		}
		session.close();
		return user2;
	}
	
	//管理员登录检查，根据用户名与密码获取管理员
	@SuppressWarnings("unchecked")
	public Manager judgeManager(Manager manager){
		Manager manager2 = null;
		session = HibernateSessionFactory.getSession();
		String hql = "from Manager as manager where manager.managerName = ? and manager.managerPassword = ?";
		query = session.createQuery(hql);
		query.setString(0, manager.getManagerName());
		query.setString(1, manager.getManagerPassword());
		Iterator<Manager> iterator = query.list().iterator();
		if(iterator.hasNext()){
			manager2 = iterator.next();
		}
		session.close();
		return manager2;
	}

	//检查用户名是否已经存在
	@SuppressWarnings("unchecked")
	public boolean judgeUserName(String userName){
		boolean flag = true;
		session = HibernateSessionFactory.getSession();
		String hql = "from User as user where user.userName = ?";
		query = session.createQuery(hql);
		query.setString(0, userName);
		Iterator<User> iterator = query.list().iterator();
		if(!iterator.hasNext()){
			flag = false;
		}
		session.close();
		return flag;
	}
	
	/**以下为帖子相关方法*/	
	
	//查询一个帖子信息
	public Post findPost(int postId){
		session = HibernateSessionFactory.getSession();
		Post post = (Post) session.get("entity.Post", postId);
		session.close();
		return post;
	}
	
	//添加一个帖子
	public void savePost(Post post){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.save(post);
		transaction.commit();
		session.close();		
	}
	
	//删除一个帖子
	public void deletePost(Post post){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.delete(post);
		transaction.commit();
		session.close();
	}
	
	//获取所有帖子总数
	public int postAmount(){
		int postAmount = 0;
		session = HibernateSessionFactory.getSession();
		String hql = "select count(*) from Post";
		query = session.createQuery(hql);
		long  l = (Long)query.uniqueResult();
		postAmount = (int)l;
		session.close();
		return postAmount;
	}
	
	//查询所有帖子
	@SuppressWarnings("unchecked")
	public List<Post> allPost(int pageNumber ,int pageSize){
		session = HibernateSessionFactory.getSession();
		List<Post> allPost = new ArrayList<Post>();
		String hql = "from Post as post order by post.postTime desc";
		query = session.createQuery(hql);
		query.setFirstResult((pageNumber - 1)*pageSize);
		query.setMaxResults(pageSize);
		allPost = query.list();
		session.close();
		return allPost;
	}
	
	/**分页,返回当前页数和总页数*/
	public int[] pageNumber(int postAmount,String pageNumberStr,int pageSize){
		int[] paging = new int[2];
		int pageNumber = 1;
		pageNumber = Integer.parseInt(pageNumberStr);
		if(pageNumber <= 0){
			pageNumber = 1;
		}
		int totalPage = 1;
		if(postAmount > 0){
			totalPage = postAmount%pageSize==0?(postAmount/pageSize):(postAmount/pageSize+1);
		}
		if(pageNumber > totalPage){
			pageNumber = totalPage;
		}
		paging[0] = pageNumber;
		paging[1] = totalPage;
		return paging;
	}
}
