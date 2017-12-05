/**
* @author suren
 *
*/
package com.mndrn.model;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "IRData")
public class IRData implements Serializable {
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

	@ElementCollection
	private Map<String, String> topWitExpln;

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

	public Map<String, String> getTopWitExpln() {
		return topWitExpln;
	}

	public void setTopWitExpln(Map<String, String> topWitExpln) {
		this.topWitExpln = topWitExpln;
	}

}
