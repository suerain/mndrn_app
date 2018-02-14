/**
* @author suren
 *
*/

package com.mndrn.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;


@SpringBootApplication
public class MndrnAppApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MndrnAppApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(MndrnAppApplication.class, args);
	}

}