package com.nt.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;

import com.nt.Entity.dactorEntity;
import com.nt.Entity.petient;

@Controller
public class petientDao {
	
	@Autowired
	private JdbcTemplate template;
	
	
	public boolean addpetient(petient p) {
		Object[] args= {p.getId(),p.getName(),p.getContact(),p.getAddress(),p.getGender(),p.getAge(),p.getAllergy()};
		 int count = template.update("insert into patient values(?,?,?,?,?,?,?)",args);
		 if (count==1) {
			 return true;
			
		}
		 else {
			return false;
		}
		
	}
	
	public petient selectidp(int id) {
		Object[] args = {id};
		petient e = template.queryForObject( "select * from patient where id=?", new RowMapper<petient>() {

			@Override
			public petient mapRow( ResultSet rs, int rowNum ) throws SQLException {
				int id = rs.getInt( "id" );
				String name = rs.getString( "name" );
				String contact = rs.getString("contact");
				String address = rs.getString("address");
				String gender=rs.getString("gender");
				int age=rs.getInt("age");
				String allergy =rs.getString("allergy");
				petient e1 = new petient(id,name,contact,address,gender,age,allergy);
				return e1;
			}
		}, args );
          return e;
	}
	
	 public List<petient> selectallp() {
		  List<petient> employees=template.query(" select * from patient", new RowMapper<petient>() {
            @Override
			public petient mapRow(ResultSet rs, int rowNum) throws SQLException {
				petient e = new petient();
				e.setId(rs.getInt("id"));
				e.setName(rs.getString("name"));
				e.setContact(rs.getString("contact"));
				e.setAddress(rs.getString("address"));
				e.setGender(rs.getString("gender"));
				e.setAge(rs.getInt("age"));
				e.setAllergy(rs.getString("allergy"));
				
				return e;
			}
		 });
		         return employees;
		}
	 
	 public boolean deletep( int id) {
    	 Object[] arg= {id};
 		int result=template.update("delete from patient where id=?",arg);
    		  if (result==1) {
    			  return true;
				
			}
    		  else {
    			  return false;
				
			}
}
	 public boolean updatep(String name,String contact,String address,String gender,int age,String allergy,int id) {
    	 try {
			Object[] obj= {name,contact,address,gender,age,allergy,id};
			int result =template.update("update patient set name=?, contact=?, address=?, gender=?, age=?, allergy=? where id=?", obj);
				if(result==1) {
					return true;
				}
			}
		 catch (Exception e) {
            e.printStackTrace();
		}
    	 return false;
     }
	
	 public void name() {
		
	}
 
	 
	 
}
