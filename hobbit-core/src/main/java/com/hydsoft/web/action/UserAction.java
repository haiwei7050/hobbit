package com.hydsoft.web.action;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/user")
public class UserAction {
    @GetMapping("/{id}")
    public String getUserById(@PathVariable("id") Long id){
        return String.format("{\"id\": %d, \"name\": \"zhw\"}", id);
    }
}
