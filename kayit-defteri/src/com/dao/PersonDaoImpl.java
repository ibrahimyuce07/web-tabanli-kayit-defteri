package com.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entity.Person;

@Repository
public class PersonDaoImpl implements PersonDao {

	// inject SessionFactory
	@Autowired
	private SessionFactory sessionFactory;

	public List<Person> getPersonList() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// create query (Query is deprecated)
		TypedQuery<Person> query = currentSession.createQuery("from Person", Person.class);
		// execute query and get result list
		List<Person> personList = query.getResultList();
		return personList;
	}

	public void createPerson(Person person) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// save
		currentSession.saveOrUpdate(person);
	}


	public void deletePerson(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// delete object with primary key
		TypedQuery query = currentSession.createQuery("delete from Person where id=:personId");
		query.setParameter("personId", theId);
		query.executeUpdate();
	}

	public Person getPerson(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Person person = currentSession.get(Person.class, theId);
		return person;
	}

}
