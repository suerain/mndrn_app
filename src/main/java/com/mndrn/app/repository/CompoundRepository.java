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

import com.mndrn.app.model.Compound;

@Repository
public interface CompoundRepository extends CrudRepository<Compound, Long> {

	public Compound saveAndFlush(Compound compound);

	@Query("SELECT c FROM Compound c WHERE c.name = :compoundname AND c.IUPACName = :iupacname")
	public List<Compound> searchWithCriteria(@Param("compoundname") String compoundname,
			@Param("iupacname") String iupacname);

}
