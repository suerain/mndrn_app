/**
* @author suren
 *
*/

package com.mndrn.app.service;

import java.util.List;
import com.mndrn.app.model.Credentials;
import com.mndrn.app.model.Member;

 
public interface ICredentialsService {

	public void save(Credentials credentials);
	public List<Credentials> findAll();
	public void deleteCredentials(String username);
	public Credentials updateCredentials(Member member,String  password);
 }
