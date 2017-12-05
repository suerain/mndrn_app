/**
* @author suren
 *
*/
package com.mndrn.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mndrn.model.Genus;
import com.mndrn.repository.GenusRepository;
import com.mndrn.service.IGenusService;

@Service
@Transactional
public class GenusServiceImpl implements IGenusService {

	@Autowired
	GenusRepository genusRepository;
	
	@Override
	public Genus saveGenus(Genus genus) {
		return genusRepository.saveAndFlush(genus);
	}

	@Override
	public void deleteGenus(Genus genus) {
		genusRepository.delete(genus);
	}

	@Override
	public List<Genus> getGenusList() {
		return (List<Genus>) this.genusRepository.findAll();
	}

}
