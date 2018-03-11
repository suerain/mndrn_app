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
import com.mndrn.app.model.Authority;
import com.mndrn.app.model.Member;

@Repository
public interface MemberRepository extends CrudRepository<Member, Long> {

	@Query("select m from Member m where m.credentials.username= :username")
	public List<Member> findByUserame(@Param("username") String username);

	@Query("select a from Member m join m.credentials c join c.authority a where c.username= :username")
	public Authority getAuthorityByUsername(@Param("username") String username);

}
