package com.nt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Dao.petientDao;
import com.nt.Entity.petient;

@Controller
public class DoctorController {
	
	@Autowired
	private petientDao Daoo;
	
	
	@RequestMapping("pabout")
	public String habout() {
		return "pabout";
		
	}
	
	@RequestMapping("pdepartment")
	public String hdepartment() {
		return "Pdepartment";
		
	}
	
	@RequestMapping("pblog")
	public String hblog() {
		return "pblog";
		
	}
	
	@RequestMapping("pcontact")
	public String hcontact() {
		return "Pcontact";
		
	}
	
	
	
	@RequestMapping("Phome")
	public String  home() {
		return "PHome";
		
	}

	
	@RequestMapping("addp")
	public String  addpetient() {
		return "addpetient";
		
	}
	
	@RequestMapping("Hpetient")
	public String  Hpetient() {
		return "PetientHome";
		
	}
	
	
	@RequestMapping("adpetient")
	public String  addpetient(@ModelAttribute petient p,Model mode) {
		boolean result= Daoo.addpetient(p);
		if (result) {
			mode.addAttribute("msg","record is Added");
			return "added";
			
			
		}
		
		else {
			mode.addAttribute("errorMsg","record is not added");
			return "error";
		}
		
	}
	
	@RequestMapping("selectidp")
	public String petientselectid() {
		return "petientselectID";
		}
	
	@RequestMapping( "selectidpetient" )
	public String selectRecord( @RequestParam int id, Model model ) {
		petient e = Daoo.selectidp(id);
		model.addAttribute( "emp",e );
		return "PetinetDisplay";
	}

	@RequestMapping("/selectallp")
	public String selectall(Model model) {
		List<petient> list = Daoo.selectallp();
		model.addAttribute("emp",list);
		return "PetientDisplayAll";
	}
	
	
	
	@RequestMapping("/deletep")
	public String delete(@RequestParam int id,Model model) 
	{
		  boolean result = Daoo.deletep(id);
		  if (result) {
			  model.addAttribute("msg","Record Is  Deleted");
			return "added";
		}
		  else {
			model.addAttribute("errorMsg","Record Is Not Deleted");
			return "error";
		}
	}
	
	
	@RequestMapping("/UpdatePETIENT")
	public String  dupdate() {
		return "PetientUpdate";
		
	}
	
	
	@RequestMapping("/updatedatap")
	public String updatedata(@RequestParam int id,@RequestParam String name,@RequestParam String contact,@RequestParam String address,@RequestParam String gender,@RequestParam int age,@RequestParam String allergy,Model model)
	{
		boolean update =Daoo.updatep(name, contact, address, gender, age, allergy,id);
		if (update) {
			
			model.addAttribute("msg","Record Is Updated");
		    return "added";
			
		}
		else {
			model.addAttribute("errorMsg","Recoed Is Not Updated");
			return "error";
		}
	}
	
	
}
