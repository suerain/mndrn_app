/**
* @author suren
 *
*/
package com.mndrn.app.service;

import java.util.List;

import com.mndrn.app.model.Compound;
import com.mndrn.app.model.SearchCriteria;

public interface ICompoundService {
	public Compound save(Compound compound);

	public void deleteCompound(Compound compound);

	public List<Compound> getCompoundList();

	public List<Compound> getCompoundByCriteria(SearchCriteria searchCriteria);

	public Compound findOne(long id);

	public void addCompound(Compound compound);

}
