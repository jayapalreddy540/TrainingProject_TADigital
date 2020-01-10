package com.tadigital.trainingproject.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Service {

	/*
	 * Propertied class Object containing database connectivity details.
	 */
	private static final Properties properties = new Properties();

	/*
	 * This static block is used to load the Driver class.
	 */
	static {
		InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("mail.properties");

		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}

	/*
	 * This method is used to provide Mail Server Configuration.
	 */
	protected Properties mailServerConfiguration() {
		return properties;
	}

	protected String getEmail() {
		return properties.getProperty("mail.username");
	}

	protected String getEmailPassword() {
		return properties.getProperty("mail.password");
	}
}
