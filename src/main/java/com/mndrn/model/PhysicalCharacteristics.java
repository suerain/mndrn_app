/**
* @author suren
 *
*/
package com.mndrn.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "PhysicalCharacteristics")
public class PhysicalCharacteristics implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long id;

	@Transient
	@OneToMany(cascade = CascadeType.PERSIST)
	private List<MultipartFile> imageList;

	@NotNull
	@Size(min = 1)
	private String explaination;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public List<MultipartFile> getImageList() {
		return imageList;
	}

	public void setImageList(List<MultipartFile> imageList) {
		this.imageList = imageList;
	}

	public String getExplaination() {
		return explaination;
	}

	public void setExplaination(String explaination) {
		this.explaination = explaination;
	}

}
