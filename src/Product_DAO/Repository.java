package Product_DAO;

import java.util.ArrayList;

import Prpduct_DTO.Product;

public class Repository {

	private ArrayList<Product> list = new ArrayList<Product>();

	public Repository() {
		Product phone = new Product("Phone", "phone", 10000);
		phone.setDescription("설명설명");
		phone.setCategory("핸드폰");
		phone.setManufac("삼성");

		Product phone2 = new Product("Phone", "phone", 10000);
		phone2.setDescription("설명설명");
		phone2.setCategory("핸드폰");
		phone2.setManufac("삼성");

		list.add(phone);
		list.add(phone2);

	}

	public ArrayList<Product> ret() {

		return list;

	}

}
