package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dialnet.source.model.User;

@Transactional
@Repository
public class SubscriberDaoImpl implements SubsriberDao {

	@Autowired
	private SessionFactory dao;

	public void add(User complaints) {
		// TODO Auto-generated method stub

	}

	public void edit(User complaints) {
		// TODO Auto-generated method stub

	}

	public void delete(int complaints_No) {
		// TODO Auto-generated method stub

	}

	public User get(String complaints_No) {
		Session sf = dao.openSession();
		Criteria c2 = sf.createCriteria(User.class);
		c2.add(Restrictions.eqProperty("username", complaints_No));
		c2.setMaxResults(1);
		User product = (User) sf.get(User.class, Long.parseLong(complaints_No));
		System.out.println("user: " + product);

		return product;
	}

	public List getAll() {
		
		return null;
	}

	public User findByVCNO(String vcno) {
		Session sf = dao.openSession();
		Criteria c2 = sf.createCriteria(User.class);
		c2.add(Restrictions.eqProperty("customer_vcno", vcno));
		User product = (User) sf.get(User.class, vcno);
		System.out.println("user: " + product);

		return product;
	}

}
