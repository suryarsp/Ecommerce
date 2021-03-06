package com.niit.controllers;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.portal.models.Supplier;

/**
 * This controller class will hold all the request methods for the CRUD
 * operations on the supplier.
 * 
 * @author Sathish1203
 *
 */

@Controller
public class AdminSupplierController extends BasicController {
	/**
	 * This method will add or update suppliers. It would first list all the
	 * suppliers and then allow user to add or update the suppliers. 
	 * 
	 * @param Supplier
	 *          -- The supplier value that is tagged to the model. The model form data object is passed to this method.
	 * @return 
	 *          -- Model and view data object  
	 */
	@RequestMapping(value = "/admin_add_supplier", method = RequestMethod.GET)
	public ModelAndView add_supplier(@ModelAttribute("command") Supplier supplier) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("currentUser", get_current_user());
		model.put("suppliers", supplierDAOImpl.getSuppliers());
		return new ModelAndView("add_supplier", model);
	}

	
	/**
	 * This method will be used to save the supplier. This controller method
	 * would be invoked to save the admin supplier and then the add method would
	 * be called.
	 * 
	 * @param Supplier
	 *          -- The supplier value that is tagged to the model. The model form data object is passed to this method.
	 * @return 
	 *          -- Model and view data object 
	 */
	@RequestMapping(value = "/admin_save_supplier", method = RequestMethod.POST)
	public ModelAndView save_supplier(@ModelAttribute("command") Supplier supplier) {
		supplierDAOImpl.addSupplier(supplier);
		return new ModelAndView("redirect:/admin_add_supplier");
	}

	
	/**
	 * This method will be used to edit the supplier. This controller method
	 * would be invoked to save the admin supplier and then the add method would
	 * be called.
	 * 
	 * @param Supplier
	 *          -- The supplier value that is tagged to the model. The model form data object is passed to this method.
	 * @return 
	 *          -- Model and view data object 
	 */
	@RequestMapping(value = "/admin_edit_supplier", method = RequestMethod.GET)
	public ModelAndView edit_supplier(@ModelAttribute("command") Supplier supplier) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("currentUser", get_current_user());
		model.put("supplier", supplierDAOImpl.getSupplierById(supplier.getId()));
		model.put("suppliers", supplierDAOImpl.getSuppliers());
		return new ModelAndView("add_supplier", model);
	}

	
	/**
	 * This method will be used to delete the supplier. This controller method
	 * would be invoked to save the admin supplier and then the add page method
	 * would be called.
	 * 
	 * @param Supplier
	 *          -- The supplier value that is tagged to the model. The model form data object is passed to this method.
	 * @return 
	 *          -- Model and view data object 
	 */
	@RequestMapping(value = "/admin_delete_supplier", method = RequestMethod.GET)
	public ModelAndView delete_supplier(@ModelAttribute("command") Supplier supplier) {
		supplierDAOImpl.RemoveSupplier(supplier);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("currentUser", get_current_user());
		model.put("supplier", null);
		model.put("suppliers", supplierDAOImpl.getSuppliers());
		return new ModelAndView("add_supplier", model);
	}

	
}// End of the class
