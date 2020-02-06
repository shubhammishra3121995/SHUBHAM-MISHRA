package com.ust.stock.service;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import com.ust.stock.model.ModelDTO;
import com.ust.stock.model.OrderDTO;
import com.ust.stock.model.RegistrationDTO;





public interface MyService {
	
	boolean MangerRegistration(RegistrationDTO rdto);

	boolean ManagerLogin(HttpServletRequest req);

	boolean addproduct(ModelDTO mdto);

	List<ModelDTO> allproduct();

	List<ModelDTO> searchproduct(String search,String filter);

	List<ModelDTO> updateproduct(ModelDTO mdto);

	List<ModelDTO> addtocart(ModelDTO mdto);

	List<ModelDTO> cartadded(ModelDTO mdto);

	List<OrderDTO> showCart();


}
