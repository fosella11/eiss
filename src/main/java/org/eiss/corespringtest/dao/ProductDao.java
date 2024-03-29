package org.eiss.corespringtest.dao;

import java.util.List;

import org.eiss.corespringtest.model.Category;
import org.eiss.corespringtest.model.Product;


public interface ProductDao {

	public List<Product> getProductsList(Product product);
	public Product getProductById(Integer idProduct);
	public void saveProduct(Product product);
	public void deleteProduct(Integer idProduct);
	
	public List<Category> getCategoriesTypesList();
	public boolean isRepeatDescription(String name, Integer idProduct);
}
