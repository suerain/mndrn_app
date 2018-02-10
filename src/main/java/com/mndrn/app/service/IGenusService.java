/**
* @author suren
 *
*/
package com.mndrn.app.service;

import java.util.List;

import com.mndrn.app.model.Genus;
import com.mndrn.app.model.SearchCriteria;

public interface IGenusService {
	public Genus saveGenus(Genus genus);
	
	public Genus saveAndFlushGenus(Genus genus);

	public void deleteGenus(Genus genus);

	public List<Genus> getGenusList();

	public List<Genus> getGenusByCriteria(SearchCriteria searchCriteria);

	public Genus findOne(long id);
	
	public void addGenus(Genus genus);

}
