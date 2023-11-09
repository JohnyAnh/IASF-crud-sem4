package com.example.iasfcrudsem4.repository;


import com.example.iasfcrudsem4.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
