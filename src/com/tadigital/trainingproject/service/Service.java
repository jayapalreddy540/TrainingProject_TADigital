package com.tadigital.trainingproject.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

public class Service {
	private static final Logger LOGGER = Logger.getLogger(Service.class.getName());

	/*
	 * Propertied class Object containing database connectivity details.
	 */
	private static final Properties properties = new Properties();

	/*
	 * This static block is used to load the Driver class.
	 */
	static {
		LOGGER.info("loading mail properties.");
		InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("mail.properties");

		try {
			properties.load(inputStream);
			LOGGER.info("mail properties loaded successfully.");
		} catch (IOException ioe) {
			LOGGER.error(ioe);
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
