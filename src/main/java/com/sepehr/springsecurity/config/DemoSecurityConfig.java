package com.sepehr.springsecurity.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		
		// Add users in memory
		UserBuilder builder = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(builder.username("sepehr").password("1234").roles("EMPLOYEE"))
			.withUser(builder.username("parham").password("1234").roles("MANAGER"))
			.withUser(builder.username("ahmad").password("1234").roles("ADMIN"));
	}

}
