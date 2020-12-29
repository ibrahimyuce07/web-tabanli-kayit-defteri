package com.service;

import com.dao.PersonDao;
import com.entity.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDao personDao;

    @Transactional
    public List<Person> getPersonList() {
        return personDao.getPersonList();
    }

    @Transactional
    public void createPerson(Person person) {
          personDao.createPerson(person);
    }

    @Transactional
    public void deletePerson(int personId) {
          personDao.deletePerson(personId);
    }


    public Person getPerson(int personId) {
        return personDao.getPerson(personId);
    }
}
