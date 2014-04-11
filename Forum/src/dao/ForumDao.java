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
	
	/**����Ϊ�û���ط���*/	
	
	//���һ���û�
	public void saveUser(User user){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}
	
	//�޸�һ���û�
	public void updateUser(User user){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.update(user);
		transaction.commit();
		session.close();
	}
	
	//��ѯһ���û���Ϣ
	public User findUser(int userId){
		session = HibernateSessionFactory.getSession();
		User user = (User) session.get("entity.User", userId);
		session.close();
		return user;
	}
	
	//��ѯһ���û����е�����
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
	
	
	//��ȡ�����û�������������
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
	
	//�û���¼��飬�����û����������ȡ�û�
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
	
	//����Ա��¼��飬�����û����������ȡ����Ա
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

	//����û����Ƿ��Ѿ�����
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
	
	/**����Ϊ������ط���*/	
	
	//��ѯһ��������Ϣ
	public Post findPost(int postId){
		session = HibernateSessionFactory.getSession();
		Post post = (Post) session.get("entity.Post", postId);
		session.close();
		return post;
	}
	
	//���һ������
	public void savePost(Post post){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.save(post);
		transaction.commit();
		session.close();		
	}
	
	//ɾ��һ������
	public void deletePost(Post post){
		session = HibernateSessionFactory.getSession();
		transaction = session.beginTransaction();
		session.delete(post);
		transaction.commit();
		session.close();
	}
	
	//��ȡ������������
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
	
	//��ѯ��������
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
	
	/**��ҳ,���ص�ǰҳ������ҳ��*/
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
