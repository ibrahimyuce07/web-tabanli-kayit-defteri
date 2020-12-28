package com.dao;

import java.util.List;

import com.entity.Person;

public interface PersonDao {

	public List<Person> getPersonList();

	public void createPerson(Person person);

	public void deletePerson(int theId);

	public Person getPerson(int theId);

}
