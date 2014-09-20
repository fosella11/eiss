package org.eiss.corespringtest.dao.impl;

import java.util.List;

import org.eiss.corespringtest.dao.ProductDao;
import org.eiss.corespringtest.model.Category;
import org.eiss.corespringtest.model.Product;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	private HibernateTemplate hibernateTemplate;
	private JdbcTemplate jdbcTemplate;
			
	@Autowired
	public ProductDaoImpl(SessionFactory sessionFactory) {
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
		this.jdbcTemplate = new JdbcTemplate(SessionFactoryUtils.getDataSource(sessionFactory));
	}

	public void deleteProduct(Integer idProduct) {
		Product product = getProductById(idProduct);
		hibernateTemplate.delete(product);
	}

	public Product getProductById(Integer idProduct) {
		Product product = (Product) hibernateTemplate.get(Product.class, idProduct);
		return product;
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProductsList(Product product) {
		
		StringBuffer query = new StringBuffer(" from Product ");
		
		if(product != null && product.getName() != null 
				&& product.getName().length() > 0){
			
			query.append(" where upper(name) like '%").append(product.getName().
					toUpperCase()).append("%' ");
		}
		
		List<Product> list = (List<Product>)
				  hibernateTemplate.find(query.toString());
		return list;
	}

	public void saveProduct(Product product) {

		hibernateTemplate.saveOrUpdate(product);
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> getCategoriesTypesList() {
		
		List<Category> list = (List<Category>) hibernateTemplate.
				find("from Category");
		return list;
	}	
	
	public boolean isRepeatDescription(String name, Integer idProduct){
		
		StringBuffer query = new StringBuffer();
		query.append("select count(*) from product ");
		query.append(" where upper(trim(name)) = '").append(name.trim().
				toUpperCase()).append("' ");
		
		if(idProduct != null){
			query.append(" and id_product != ").append(idProduct);
		}		

		int count = jdbcTemplate.queryForInt(query.toString());
		if(count > 0){
			return true;
		}
		return false;		
	}

}
