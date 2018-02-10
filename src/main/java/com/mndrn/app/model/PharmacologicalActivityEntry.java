/**
* @author suren
 *
*/
package com.mndrn.app.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "PharmacologicalActivityEntry")
public class PharmacologicalActivityEntry implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long pharmacologicalActivityId;

	@Transient
	private MultipartFile image;

	@NotNull
	@Size(min = 1)
	private String title;

	@NotNull
	@Size(min = 1)
	private String expln;

	public long getPharmacologicalActivityId() {
		return pharmacologicalActivityId;
	}

	public void setPharmacologicalActivityId(long pharmacologicalActivityId) {
		this.pharmacologicalActivityId = pharmacologicalActivityId;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getExpln() {
		return expln;
	}

	public void setExpln(String expln) {
		this.expln = expln;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
