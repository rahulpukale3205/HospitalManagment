package com.nt.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;

import com.nt.Entity.contact;
import com.nt.Entity.dactorEntity;

@Controller
public class DoctorADao {
	
	@Autowired
	private JdbcTemplate template;
	
	public boolean add(dactorEntity e) {
	
		Object[] args= {e.getId(),e.getName(),e.getContact(),e.getExperience(),e.getDegree(),e.getSpeciality(),e.getFee()};
		int result=template.update("insert into doctor values(?,?,?,?,?,?,?)",args);
		if (result==1) {
			return true;
			
		}
		else {
			return false;
		}
	}
	
	
	public dactorEntity selectid(int id) {
		Object[] args = {id};
		dactorEntity e = template.queryForObject( "select * from doctor where id=?", new RowMapper<dactorEntity>() {

			@Override
			public dactorEntity mapRow( ResultSet rs, int rowNum ) throws SQLException {
				int id = rs.getInt( "id" );
				String name = rs.getString( "name" );
				String contact = rs.getString("contact");
				String experience = rs.getString("experience");
				String degree=rs.getString("degree");
				String speciality=rs.getString("speciality");
				int fee=rs.getInt("fee");
				dactorEntity e1=new dactorEntity(id,name,contact,experience,degree,speciality,fee);
				return e1;
			}
		}, args );
          return e;
	}
				
	
	 public List<dactorEntity> selectall() {
		  List<dactorEntity> employees=template.query(" select * from doctor", new RowMapper<dactorEntity>() {
             @Override
			public dactorEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
				dactorEntity e = new dactorEntity();
				e.setId(rs.getInt("id"));
				e.setName(rs.getString("name"));
				e.setContact(rs.getString("contact"));
				e.setExperience(rs.getString("experience"));
				e.setDegree(rs.getString("degree"));
				e.setSpeciality(rs.getString("speciality"));
				e.setFee(rs.getInt("fee"));
				
				return e;
			}
		 });
		         return employees;
		}
	     
	
	 public boolean update(String name,String contact,String experience,String degree,String speciality,int fee,int id) {
    	 try {
			Object[] obj= {name,contact,experience,degree,speciality,fee,id};
			int result =template.update("update doctor set name=?, contact=?, experience=?, degree=?, speciality=?, fee=? where id=?", obj);
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


	  public boolean delete( int id) {
	    	 Object[] arg= {id};
	 		int result=template.update("delete from doctor where id=?",arg);
	    		  if (result==1) {
	    			  return true;
					
				}
	    		  else {
	    			  return false;
					
				}
	}
	 
	  
		
		public boolean addCntact(contact c) {
		
			Object[] args= {c.getName(),c.getEmail(),c.getSubject(),c.getMessage()};
			int result=template.update("insert into dcontact values(?,?,?,?)",args);
			if (result==1) {
				return true;
				
			}
			else {
				return false;
			}
		}
		
	 
	 
	 
	}


