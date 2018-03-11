package com.mndrn.app.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@Configuration
@EnableWebSecurity
@EnableAspectJAutoProxy
public class AppConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	DataSource dataSource;

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select member_name,password, 1 as enabled from users where member_name = ?")
				.authoritiesByUsernameQuery(
						"select u1.member_name, u2.authority from users u1, authorities u2 where u1.member_name = u2.member_name and u1.member_name =?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/", "/resources/**", "/memberform","/dashboard", "/membersaved", "/success")
				.permitAll().anyRequest().authenticated().
				and().formLogin().defaultSuccessUrl("/dashboard").loginPage("/login").permitAll();
	}
	
}
