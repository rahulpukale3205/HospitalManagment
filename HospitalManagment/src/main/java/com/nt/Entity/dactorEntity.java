package com.nt.Entity;

public class dactorEntity {

	private int id;
	private String name;
	private String contact;
	private String experience;
	private String degree;
	private String speciality;
	private int fee;
	
	public dactorEntity() {
		// TODO Auto-generated constructor stub
	}

	public dactorEntity(int id, String name, String contact, String experience, String degree, String speciality,
			int fee) {
		super();
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.experience = experience;
		this.degree = degree;
		this.speciality = speciality;
		this.fee = fee;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}
	
	
}
