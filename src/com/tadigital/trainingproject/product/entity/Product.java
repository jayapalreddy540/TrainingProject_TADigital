package com.tadigital.trainingproject.product.entity;

/*
 * Entity Class for Product.
 */
public class Product {

	private int id;
	private String name;
	private double price;

	/*
	 * Default Constructor.
	 */
	public Product() {

	}

	public Product(int id, String name, double price) {
		this.id = id;
		this.name = name;
		this.price = price;
	}

	public Product(String name, double price) {
		this.name = name;
		this.price = price;
	}

	/*
	 * GETTER METHODS
	 */
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public double getPrice() {
		return price;
	}

	/*
	 * SETTER METHODS
	 */
	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPrice(double price) {
		this.price = price;
	}
}
