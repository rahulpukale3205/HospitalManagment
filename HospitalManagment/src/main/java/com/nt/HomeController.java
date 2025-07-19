package com.nt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Dao.DoctorADao;
import com.nt.Entity.contact;
import com.nt.Entity.dactorEntity;

@Controller
public class HomeController {
	
	@Autowired
	private DoctorADao Dao;
	
	@RequestMapping("/")
	public String index() {
		return "index";
		
	}
	
	
	@RequestMapping("Habout")
	public String habout() {
		return "Habout";
		
	}
	
	@RequestMapping("Hdepartment")
	public String hdepartment() {
		return "HDepartment";
		
	}
	
	@RequestMapping("Hblog")
	public String hblog() {
		return "Hblog";
		
	}
	
	
	
	@RequestMapping("home")
	public String home() {
		return "homeHR";
		
	}
	
	@RequestMapping("hdoctor")
	public String hdoctor() {
		return "HDoctor";
		
	}
	
	@RequestMapping("HDoctorCntact")
	public String hdoctorC() {
		return "HDoctorContact";
		
	}
	
	
	@RequestMapping("/add")
	public String DoctorAdd() {
		return "DoctorAdd";
		
	}
	
	@RequestMapping("/dadd")
	public String add(@ModelAttribute dactorEntity e,Model mode) {
		
		boolean result = Dao.add(e);
		if (result) {
			mode.addAttribute("msg","Added Succuss");
			return "added";
			
		}
		else {
			mode.addAttribute("errorMsg","Record in not Added");
			return "error";
		}
	}
	
	@RequestMapping("/select")
	public String  selectid() {
		return "selectid";
		
	}
	

	@RequestMapping( "select-id" )
	public String selecRecord( @RequestParam int id, Model model ) {
		dactorEntity e = Dao.selectid(id);
		model.addAttribute( "emp",e );
		return "display";
	}
	
	@RequestMapping("/select-all")
	public String selectall(Model model) {
		List<dactorEntity> list = Dao.selectall();
		model.addAttribute("emp",list); 
		return "HDisplayAll";
	}
	
	
	@RequestMapping("/updateD")
	public String  Hupdate() {
		return "Hupdate";
		
	}
	
	@RequestMapping("/hupdate")
	public String updatedata(@RequestParam int id,@RequestParam String name,@RequestParam String contact,@RequestParam String experience,@RequestParam String degree,@RequestParam String speciality,@RequestParam int fee,Model model)
	{
		boolean update =Dao.update(name, contact, experience, degree, speciality, fee,id);
		if (update) {
			
			model.addAttribute("msg","Record Is Updated");
		    return "added";
			
		}
		else {
			model.addAttribute("errorMsg","Recoed Is Not Updated");
			return "error";
		}
	}
	
	@RequestMapping("/delete-form")
	public String delete(@RequestParam int id,Model model) 
	{
		  boolean result = Dao.delete(id);
		  if (result) {
			  model.addAttribute("msg","Record Is  Deleted");
			return "added";
		}
		  else {
			model.addAttribute("errorMsg","Record Is Not Deleted");
			return "error";
		}
	}
	
	
	
	@RequestMapping("/AddContact")
	public String add(@ModelAttribute contact c,Model mode) {
		
		boolean result = Dao.addCntact(c);
		if (result) {
			mode.addAttribute("msg","Added Succuss");
			return "added";
			
		}
		else {
			mode.addAttribute("errorMsg","Record in not Added");
			return "error";
		}
	
	}
}
