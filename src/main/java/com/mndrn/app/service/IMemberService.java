/**
* @author suren
 *
*/

package com.mndrn.app.service;

import java.util.List;
import com.mndrn.app.model.Authority;
import com.mndrn.app.model.Member;


public interface IMemberService {
	public Authority getAuthorityForUser(String name);

	public void deleteMember(Long id);

	public List<Member> getAll();

	public Member getUser(Long id);

	public void save(Member member);

	public List<Member> findByUserName(String username);
}
