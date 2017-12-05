/**
* @author suren
 *
*/
package com.mndrn.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.mndrn.model.Genus;

@Repository
public interface GenusRepository extends CrudRepository<Genus, Long> {

	public Genus saveAndFlush(Genus g);
	
}
