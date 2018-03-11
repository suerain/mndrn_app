/**
* @author suren
 *
*/

package com.mndrn.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mndrn.app.model.Credentials;
import com.mndrn.app.model.Member;
import com.mndrn.app.repository.CredentialsRepository;
import com.mndrn.app.service.ICredentialsService;

@Service
@Transactional
public class CredentialsService implements ICredentialsService {

	@Autowired
	private CredentialsRepository credentialsRepository;

	public void save(Credentials credentials) {
		/*
		 * PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); String
		 * encodedPassword = passwordEncoder.encode(credentials.getPassword());
		 * credentials.setPassword(encodedPassword);
		 */
		credentialsRepository.save(credentials);
	}

	public List<Credentials> findAll() {
		return (List<Credentials>) credentialsRepository.findAll();
	}

	@Override
	public void deleteCredentials(String username) {
		credentialsRepository.delete(username);
	}

	@Override
	public Credentials updateCredentials(Member member, String password) {
		Credentials credentials = member.getCredentials();
		credentials.setPassword(password);
		Credentials newCredentials = credentialsRepository.save(credentials);
		return newCredentials;
	}

}
