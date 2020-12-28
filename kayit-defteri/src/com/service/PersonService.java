package com.service;

import com.entity.Person;

import java.util.List;

public interface PersonService {

     List<Person> getPersonList();

     void createPerson(Person person);

     void deletePerson(int theId);

     Person getPerson(int theId);
}
