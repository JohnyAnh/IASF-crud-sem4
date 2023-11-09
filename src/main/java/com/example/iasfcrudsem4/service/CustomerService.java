package com.example.iasfcrudsem4.service;

import com.example.iasfcrudsem4.entity.Customer;

import java.util.List;
import java.util.Optional;

public interface CustomerService {
    void saveCustomer(Customer customer);

    Customer findId(long id);

    List<Customer> getAllCustomer();


    void deleteCustomer(long id);
}
