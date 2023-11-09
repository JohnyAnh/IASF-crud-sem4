package com.example.iasfcrudsem4.controller;

import com.example.iasfcrudsem4.entity.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @GetMapping("/")
    public String getAll(ModelMap modelMap){
        String view = "index";
        return view;
    }
}
