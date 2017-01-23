package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOUser;
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
		User product = (User) sf.get(User.class, Long.parseLong(complaints_No));
		System.out.println("user: " + product);

		return product;
	}

	public List getAll() {
		Session sf = dao.openSession();
		return sf.createCriteria(User.class).list();
	}

	public User findByVCNO(String vcno) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(User.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.gt("customer_vc_no", vcno));
		User product = (User)cr.uniqueResult();
		System.out.println("user: " + product);

		return product;
	}

}
