package com.example.iasfcrudsem4.controller;


import com.example.iasfcrudsem4.entity.Customer;
import com.example.iasfcrudsem4.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/getFormCreate")
    public String getFormCreate(ModelMap modelMap) {
        String view = "createOrUpdateCustomerForm";
        try {
            Customer customer = new Customer();
            modelMap.addAttribute("customer", customer);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return view;
    }

//    Controller này chỉ dùng check view form update
    @GetMapping("/getFormUpdate")
    public String getFormUpdate(ModelMap modelMap) {
        String view = "updateCustomerForm";
        return view;
    }

//    Đoạn này khi nhấn nút create
    @PostMapping("/createOrUpdate")
    public String saveOrUpdate(@ModelAttribute("customer") Customer customer, ModelMap modelMap) {
        String view = "redirect:/customer/getAll";
        try {
            customerService.saveCustomer(customer);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return  view;
    }

    //    Đoạn này khi nhấn nút Edit
    @RequestMapping( value = "/update/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") long id , ModelMap modelMap){
        String view = "updateCustomerForm";
        try {
            modelMap.addAttribute("customer", customerService.findId(id));// customer này sẽ đại diện dữ liêu trang view hiển thị vd customer.id
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return  view;
    }

    //    Đoạn này khi nhấn nút update
    @PostMapping("/update")
    public String update(@ModelAttribute("customer") Customer customer, ModelMap modelMap) {
        String view = "redirect:/customer/getAll";
        try {
            customerService.saveCustomer(customer);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return  view;
    }

    //Đoạn này nhấn Delete
    @RequestMapping( value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") long id , ModelMap modelMap){
        String view = "redirect:/customer/getAll";
        try {
            customerService.deleteCustomer(id);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return  view;
    }



    @GetMapping("/getAll")
    public String getAll(ModelMap modelMap){
        String view = "listCustomer";
        try {
            List<Customer> customers = customerService.getAllCustomer();
            modelMap.addAttribute("customers", customers);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return view;
    }
}