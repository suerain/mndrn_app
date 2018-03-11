/**
* @author suren
 *
*/
package com.mndrn.app.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "HPLC_TLC_Entry")
public class HPLC_TLC_Entry implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long HPLC_TLC_EntryId;

	@Transient
	private MultipartFile image;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String title;

	@NotNull
	@Lob
	@Size(min = 1, message = "Field cannot be empty")
	private String expln;

	public long getHPLC_TLC_EntryId() {
		return HPLC_TLC_EntryId;
	}

	public void setHPLC_TLC_EntryId(long hPLC_TLC_EntryId) {
		HPLC_TLC_EntryId = hPLC_TLC_EntryId;
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
