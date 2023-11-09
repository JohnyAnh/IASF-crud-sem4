package com.example.iasfcrudsem4.service.impl;

import com.example.iasfcrudsem4.entity.Customer;
import com.example.iasfcrudsem4.repository.CustomerRepository;
import com.example.iasfcrudsem4.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public void saveCustomer(Customer customer) {
        try {
            customerRepository.save(customer);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public Customer findId(long id) {
        try {
            Optional<Customer> optionalCustomer = customerRepository.findById(id);
            return optionalCustomer.orElse(null);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @Override
    public void deleteCustomer(long id){
        try {
             customerRepository.delete(findId(id));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }

    @Override
    public List<Customer> getAllCustomer() {
        return customerRepository.findAll();
    }


}
