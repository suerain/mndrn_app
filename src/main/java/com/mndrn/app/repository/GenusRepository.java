/**
* @author suren
 *
*/
package com.mndrn.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mndrn.app.model.Genus;

@Repository
public interface GenusRepository extends CrudRepository<Genus, Long> {

	public Genus saveAndFlush(Genus genus);

	@Query("SELECT g FROM Genus g WHERE  g.name = :genusname AND g.species = :species")
	public List<Genus> searchWithCriteria(@Param("genusname") String genusname, @Param("species") String species);
	
}
