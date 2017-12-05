/**
* @author suren
 *
*/
package com.mndrn.service;

import java.util.List;

import com.mndrn.model.Genus;

public interface IGenusService {
	public Genus saveGenus(Genus genus);
	public void deleteGenus(Genus genus);
	public List<Genus> getGenusList();

}
