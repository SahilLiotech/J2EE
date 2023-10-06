package Model;
import javax.persistence.*;

@Entity
@Table(name="userdata")
public class User {
@Id @GeneratedValue
@Column(name="id")
private int id;
@Column(name="name")
private String name;
@Column(name="email")
private String email;
@Column(name="password")
private String password;
@Column(name="country")
private String country;
@Column(name="gender")
private String gender;

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
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}

}
