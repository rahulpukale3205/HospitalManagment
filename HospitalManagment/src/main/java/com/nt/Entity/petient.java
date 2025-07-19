package com.nt.Entity;

public class petient {
	
	private int id;
	private String name;
	private String contact;
	private String address;
	private String gender;
	private int age;
	private String allergy;
	
	public petient() {
	}

	public petient(int id, String name, String contact, String address, String gender, int age, String allergy) {
		super();
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.address = address;
		this.gender = gender;
		this.age = age;
		this.allergy = allergy;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	
	
}
