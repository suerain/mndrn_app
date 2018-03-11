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
@Table(name = "ChemicalStructureEntry")
public class ChemicalStructureEntry implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long chemicalStructureId;

	@Transient
	private MultipartFile image;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String expln;

	public long getChemicalStructureId() {
		return chemicalStructureId;
	}

	public void setChemicalStructureId(long chemicalStructureId) {
		this.chemicalStructureId = chemicalStructureId;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
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
