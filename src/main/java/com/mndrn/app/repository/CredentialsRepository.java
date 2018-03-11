/**
* @author suren
 *
*/

package com.mndrn.app.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mndrn.app.model.Credentials;

@Repository
public interface CredentialsRepository extends CrudRepository<Credentials, String> {
}
