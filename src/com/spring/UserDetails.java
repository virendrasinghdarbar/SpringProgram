package com.spring;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table(name="Springtable2",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "uemail")
        }
)
public class UserDetails {
	//@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
@NotNull(message = "please fill text")
	@Column(name="username")
private String uname;
   @Size(min = 4,message ="dal beta" )
	@Column(name="userpassword")
private String upass;
   @NotNull(message = "ddddd")
	@Id
	@Column(unique = true)
private String uemail;
	@Column(name="usermobile")
	@NotNull(message = "aaaa")
private String umobile;
	
	public UserDetails()
	{}
public UserDetails(String string, String string2, String string3, String string4) {
		// TODO Auto-generated constructor stub
	}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getUpass() {
	return upass;
}
public void setUpass(String upass) {
	this.upass = upass;
}
public String getUemail() {
	return uemail;
}
public void setUemail(String uemail) {
	this.uemail = uemail;
}

public String getUmobile() {
	return umobile;
}
public void setUmobile(String umobile) {
	this.umobile = umobile;
}
@Override
public String toString() {
	return  id + "  "+uname + " "  + upass +"   " + uemail + "  "+ umobile ;
}



}
