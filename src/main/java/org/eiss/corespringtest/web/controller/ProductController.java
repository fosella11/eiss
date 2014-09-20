package org.eiss.corespringtest.web.controller;

import java.math.BigDecimal;
import java.util.List;

import org.eiss.corespringtest.model.Category;
import org.eiss.corespringtest.model.Product;
import org.eiss.corespringtest.service.ProductManager;
import org.eiss.corespringtest.web.validator.ProductValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomNumberEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class ProductController {

	@Autowired
	private ProductManager productManager;
	
	@Autowired
	private ProductValidator productValidator;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(BigDecimal.class, 
				new CustomNumberEditor(BigDecimal.class, true));
	}
	
	@RequestMapping("/inicio.htm")
	public void inicio() {
		
	}

	@RequestMapping("/productList.htm")
	public void productList(Model model,
			@ModelAttribute("product") Product product) {

		List<Product> products = productManager.getProductsList(product);
		model.addAttribute("products", products);
		model.addAttribute("product", product);
		
	}

	@RequestMapping(value = "/productView.htm", method = RequestMethod.GET)
	public @ModelAttribute("product")Product productView
			(@RequestParam(value = "idProduct", required = false) Integer idProduct) {

		if (idProduct != null) {
			Product product = productManager.getProductById(idProduct);
			return product;
		}
		return new Product();
	}

	@RequestMapping(value = "/productView.htm", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product,
			BindingResult result, SessionStatus status) {

		try {
			
			productValidator.validate(product, result);
			if (result.hasErrors()) {
				return "productView";
			}
			productManager.saveProduct(product);
			return "redirect:productList.htm";
			
		} catch (Exception e) {
			return "productView";
		}
	}

	@RequestMapping("/deleteProduct.htm")
	public String deleteProduct(
			@RequestParam(value = "idProduct", required = false) Integer idProduct) {

		productManager.deleteProduct(idProduct);
		return "redirect:productList.htm";
	}
	
	@ModelAttribute("categoriesTypes")
	public List<Category> listarCategories() {

		List<Category> categoriesTypes = productManager.getCategoriesTypesList();
		return categoriesTypes;
	}
	
}