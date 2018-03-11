/**
* @author suren
 *
*/

package com.mndrn.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mndrn.app.model.Authority;
import com.mndrn.app.model.Member;
import com.mndrn.app.repository.MemberRepository;
import com.mndrn.app.service.IMemberService;

@Service
@Transactional

public class MemberService implements IMemberService {

	@Autowired
	MemberRepository memberRepository;
	@Autowired
	CredentialsService credentialsService;

	@Override
	public void save(Member member) {
		credentialsService.save(member.getCredentials());
		memberRepository.save(member);

	}

	@Override
	public List<Member> findByUserName(String username) {
		return memberRepository.findByUserame(username);
	}

	@Override
	public Authority getAuthorityForUser(String name) {
		return memberRepository.getAuthorityByUsername(name);
	}

	@Override
	public void deleteMember(Long id) {
		Member member = memberRepository.findOne(id);
		// member.setCredentials(null);
		credentialsService.deleteCredentials(member.getCredentials().getUsername());
		memberRepository.delete(id);

	}

	@Override
	public List<Member> getAll() {
		return (List<Member>) memberRepository.findAll();
	}

	@Override
	public Member getUser(Long id) {
		return memberRepository.findOne(id);
	}

}
