/**
 * @author suren
 *
 */
package com.mndrn.app.model;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@NotEmpty
	@Column(name = "firstName")
	@Size(min = 1, message = "Field cannot be empty")
	private String firstName;

	@Column(name = "middleName")
	private String middleName;

	@NotEmpty
	@Column(name = "lastName")
	@Size(min = 1, message = "Field cannot be empty")
	private String lastName;
	@NotEmpty

	@Column(name = "email")
	@Size(min = 1, message = "Field cannot be empty")
	private String email;

	@Column(name = "dateOfMembership")
	@Size(min = 1, message = "Field cannot be empty")
	private Date dateOfMembership = new Date();

	@NotEmpty
	@Column(name = "Phone")
	@Size(min = 1, message = "Field cannot be empty")
	private String phone;

	@Valid
	@OneToOne(cascade = { CascadeType.MERGE, CascadeType.REMOVE })
	@JoinColumn(name = "USERNAME")
	private Credentials credentials;

	@Transient
	private MultipartFile image;

	// to be decided what to put here
	// @NotEmpty
	// @Column(name = "title")
	// private String title;

	// to be decided whether or not to put address
	// @Valid
	// @OneToOne(cascade = CascadeType.ALL)
	// @JoinColumn(name = "id")
	// private Address memberAddress;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateOfMembership() {
		return dateOfMembership;
	}

	public void setDateOfMembership(Date dateOfMembership) {
		this.dateOfMembership = dateOfMembership;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Credentials getCredentials() {
		return credentials;
	}

	public void setCredentials(Credentials credentials) {
		this.credentials = credentials;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

}
