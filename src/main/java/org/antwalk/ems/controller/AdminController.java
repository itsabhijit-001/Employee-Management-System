package org.antwalk.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.antwalk.ems.exception.UserNotFoundException;
import org.antwalk.ems.model.Admin;
import org.antwalk.ems.model.Employee;
import org.antwalk.ems.repository.AdminRepository;
import org.antwalk.ems.repository.EmployeeRepository;
import org.antwalk.ems.security.AuthenticationSystem;
import org.antwalk.ems.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// @RestController
// @RequestMapping("/dashboard/admin")
@Controller
@RequestMapping("admin")
public class AdminController {

    // @Autowired
    // UserService userService;
    
    // @PostMapping("/addUser")
    // @PreAuthorize(value = "hasRole('ADMIN')")
    // public ResponseEntity<User> addUser(@RequestBody User user){
    //     return ResponseEntity.ok().body(userService.createUser(user));
    // }

    @Autowired
    AdminService adminService;

    @GetMapping("dashboard")
    public String admindashboard(HttpServletRequest request, Model model) throws UserNotFoundException{
        Long id = AuthenticationSystem.getId();
        Admin admin = adminService.fetchAdminData(id);
        model.addAttribute("admin",admin);
        return "admindashboard";
    }
}
