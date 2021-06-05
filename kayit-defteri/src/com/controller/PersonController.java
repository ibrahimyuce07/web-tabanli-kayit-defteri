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

import com.entity.Person;
import com.service.PersonService;
//MASTER
//EXPERIMENTAL EDIT A FILE
@Controller
@RequestMapping(value = "/person", produces = "text/plain;charset=UTF-8")
public class PersonController {

	
	@Autowired
	private PersonService personService;


	@GetMapping(value = "/list", produces = "text/plain;charset=UTF-8")
	public String getPersonList(Model model){
		List<Person> personList = personService.getPersonList();
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
	@PostMapping(value = "/savePerson", produces = "text/plain;charset=UTF-8")
	public String createPerson(@ModelAttribute("person") Person person){
		personService.createPerson(person);
		return "redirect:/person/list";
	}

	//Update Person
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("personId") int theId, Model model) {
		Person person = personService.getPerson(theId);
		model.addAttribute("person", person);
		return "save-form";
	}

	//Delete Person
	@GetMapping("/delete")
	public String deletePerson(@RequestParam("personId") int theId) {

		personService.deletePerson(theId);

		return "redirect:/person/list";

	}
}
