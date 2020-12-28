package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.PersonDao;
import com.entity.Person;

@Controller
@RequestMapping("/person")
public class PersonController {

	// dependency injection
	@Autowired
	private PersonDao dao;

	//List Person
	@GetMapping("/list")
	public String getPersonList(Model model) {

		List<Person> personList = dao.getPersonList();
		model.addAttribute("personList", personList);

		return "list-person";
	}

	// Show Create and Update Form
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {

		Person person = new Person();
		model.addAttribute("person", person);

		return "save-form";
	}

	//Create Person
	@PostMapping("/savePerson")
	public String createPerson(@ModelAttribute("person") Person person) {

		dao.createPerson(person);
		
		return "redirect:/person/list";

	}

	//Update Person
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("personId") int theId, Model model) {
		
		Person person = dao.getPerson(theId);
		model.addAttribute("person", person);
		
		return "save-form";
	}

	//Delete Person
	@GetMapping("/delete")
	public String deletePerson(@RequestParam("personId") int theId) {

		dao.deletePerson(theId);

		return "redirect:/person/list";

	}
}
