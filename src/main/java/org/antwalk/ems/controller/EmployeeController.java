package org.antwalk.ems.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.antwalk.ems.exception.EmployeeNotFoundException;
import org.antwalk.ems.exception.UserNotFoundException;
import org.antwalk.ems.model.Employee;
import org.antwalk.ems.model.EmployeeDetails;
import org.antwalk.ems.model.FamilyDetails;
import org.antwalk.ems.model.LeaveApplication;
import org.antwalk.ems.model.ProfDetails;
import org.antwalk.ems.model.QualificationDetails;
import org.antwalk.ems.model.Resignation;
import org.antwalk.ems.repository.EmployeeDetailsRepository;
import org.antwalk.ems.repository.EmployeeRepository;
import org.antwalk.ems.repository.FamilyDetailsRepository;
import org.antwalk.ems.security.AuthenticationSystem;
import org.antwalk.ems.service.EmployeeService;
import org.antwalk.ems.view.EmployeeLeaveView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

// @RestController
// @RequestMapping("/dashboard/admin")
@Controller
@RequestMapping("employee")
public class EmployeeController {

    // @Autowired
    // UserService userService;

    // @PostMapping("/addUser")
    // @PreAuthorize(value = "hasRole('ADMIN')")
    // public ResponseEntity<User> addUser(@RequestBody User user){
    // return ResponseEntity.ok().body(userService.createUser(user));
    // }

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private FamilyDetailsRepository familyDetailsRepository;

    @Autowired
    private EmployeeDetailsRepository employeeDetailsRepository;

    @GetMapping("dashboard")
    public String employeedashboard(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
        Employee employee;
		try {
			employee = employeeService.findEmployee(id);
		} catch (EmployeeNotFoundException e) {
			// TODO Auto-generated catch block

	        employee=new Employee();
			e.printStackTrace();
		}
        model.addAttribute("employee", employee);
        return "myProfile";
    }

    @GetMapping("editemployeedetails")
    public String editemployeedetails(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        Employee employee;
		try {
			employee = employeeService.findEmployee(id);
		} catch (EmployeeNotFoundException e) {
			// TODO Auto-generated catch block
	        employee=new Employee();
			e.printStackTrace();
		}
        model.addAttribute("employee", employee);
        return "myProfile";
    }

    @GetMapping("personaldetails")
    public String personaldetails(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
        EmployeeDetails employeeDetails = employeeService.employeeInfo(id);
        model.addAttribute("employeeinfo", employeeDetails);
        return "myProfile";
    }



    @PostMapping("/applyLeave")
    public String editemployee(@ModelAttribute("leave") LeaveApplication leaveApplication, BindingResult result, RedirectAttributes redirectAttrs) throws UserNotFoundException{
        
        Long id = AuthenticationSystem.getId();
        employeeService.applyLeave(id,leaveApplication);
        

        // if (result.hasErrors()){
        //     redirectAttrs.addFlashAttribute("result", result);
        // }
        // else{
        //     redirectAttrs.addFlashAttribute("result",ResponseEntity.ok().body(new SuccessDetails(
        //         new Date(),
        //         "Added",
        //         "New leave is added"
        //     )));
        // }
        return "redirect:leaveApplication?pg=1";
    }

    @GetMapping("leaveApplication")
       public String leaveApplicationView(HttpServletRequest request, Model model) throws EmployeeNotFoundException {
       Long id = AuthenticationSystem.getId();
       
        int pg = Integer.parseInt(request.getParameter("pg"));
       
        List<LeaveApplication> leaveapplications = null;
        int totalCount = 0;
        int totalPages = 0;
        List<Integer> applied=new ArrayList<>();
        String status;
        EmployeeLeaveView employee;
		try {
			leaveapplications = employeeService.findEmployeeLeaves(id,pg);
			totalCount = employeeService.totalLeaves(id);
			totalPages = employeeService.totalCountOfPages(id);
			 applied=employeeService.countApplied(id);
			status = "SUCCESS";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			model.addAttribute("exception",e);
			System.out.println(e);
			status = "FAILED";
		}
//		try {
			employee = employeeService.findEmployeeLeaves(id);
			System.out.println("\n\nhi\n\n");
			status = "SUCCESS";
//		}
//		catch(Exception e) {
//			System.out.println("\n\n no \n\n");
//			System.out.println("\n\n "+e.getMessage()+" \n\n");
//			model.addAttribute("exception",e);
//			status = "FAILED";
//		}
		System.out.println("\n\n\n"+employee.getCl());
        model.addAttribute("status",status);
        model.addAttribute("employee",employee);
        model.addAttribute("appliedLeaves",applied);
		model.addAttribute("status",status);
        model.addAttribute("leavelist",leaveapplications);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("count",totalCount);
        model.addAttribute("pg", pg);
       return "applyLeave";
       }

    @GetMapping("dashboards")
    public String employeesdashboard(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
        Employee employee = employeeRepository.getById(id);
        model.addAttribute("employee", employee);
        return "personalDetails";
    }


    @GetMapping("adminUserView")
    public String adminUserView(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
        // List<FamilyDetails> listOfFamilyDetails =
        // employeeService.listAllFamilyDetails(id);
        // model.addAttribute("listOfFamily",listOfFamilyDetails);
        // model.addAttribute("familyDetails", new ArrayList<FamilyDetails>());
        return "editUser";
    }

    @GetMapping("employeepersonaldetails")
    public String employeepersonaldetails(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println("Emp details  " + id);
        EmployeeDetails employeeDetails = employeeService.employeeInfo(id);
        model.addAttribute("employeeinfomation", employeeDetails);
        System.out.println(employeeDetails);
        // model.addAttribute("familyDetails", new ArrayList<FamilyDetails>());
        return "personalDetails";
    }

    @PostMapping("postfamilydetails")
    public String postfamilydetails(@ModelAttribute("listOfFamily") List<FamilyDetails> families,
            BindingResult result) {
        // familyDetailsRepository.saveAll(families); // save all updated users to the
        // database
        // if(result.hasErrors()){
        // return "error";
        // }
        // model.addAttribute("family", families);
        return "redirect:/familyDetails";
    }

    @PostMapping("personaldetailsofemployee")
    public String editemployee(@ModelAttribute("emppersonaldetails") EmployeeDetails employeeDetails,
            BindingResult result, RedirectAttributes redirectAttrs) throws UserNotFoundException, EmployeeNotFoundException {
        // familyDetailsRepository.saveAll(families); // save all updated users to the
        // database

        Long id = AuthenticationSystem.getId();
        System.out.println("hello " + id);
        System.out.println(employeeDetails);
        employeeService.saveEmpDetails(id,employeeDetails);
        return "redirect:/employee/employeepersonaldetails";
    }

    @GetMapping("resign")
    public String resign(HttpServletRequest request, Model model) throws EmployeeNotFoundException{
        Long id = AuthenticationSystem.getId();
        Resignation resign = employeeService.resign(id);
        model.addAttribute("resign", resign);
        return "applyResignation";
    }

    @PostMapping("applyResignation")
    public String applyResignation(@ModelAttribute("resignform") Resignation resignation, HttpServletRequest request) throws EmployeeNotFoundException{
        Long id = AuthenticationSystem.getId();
        employeeService.applyForResignation(id, resignation);
        return "redirect:resign";
    }
    @GetMapping("/deletefamilymember")
    public String deletefamilymember( HttpServletRequest request, RedirectAttributes redirectAttrs) throws UserNotFoundException{
    	Long fid=Long.parseLong(request.getParameter("fid"));
        employeeService.deleteFamilyMemberById(fid);
        

        // if (result.hasErrors()){
        //     redirectAttrs.addFlashAttribute("result", result);
        // }
        // else{
        //     redirectAttrs.addFlashAttribute("result",ResponseEntity.ok().body(new SuccessDetails(
        //         new Date(),
        //         "Added",
        //         "New leave is added"
        //     )));
        // }
        return "redirect:familyDetails";
    }
    @GetMapping("/deleteQualification")
    public String deleteQualification( HttpServletRequest request, RedirectAttributes redirectAttrs) throws UserNotFoundException{
    	Long qid=Long.parseLong(request.getParameter("qid"));
        employeeService.deleteQualificationById(qid);
        

        return "redirect:qualificationdetails";
    }
    @GetMapping("/deleteProfession")
    public String deleteProfession( HttpServletRequest request, RedirectAttributes redirectAttrs) throws UserNotFoundException{
    	Long pid=Long.parseLong(request.getParameter("pid"));
        employeeService.deleteProfessionById(pid);
        

        return "redirect:professionaldetails";
    }


    @GetMapping("qualificationdetails")
    public String qualificationdetails(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
//        int pg=Integer.parseInt(request.getParameter("pg"));
        List<QualificationDetails> listOfQualificationDetails = employeeService.findQualificationDetails(id,1);
        
        model.addAttribute("listOfQualification", listOfQualificationDetails);
        return "myQualification";
    }
    
    @PostMapping("addQualification")
    public String addQualification(@ModelAttribute("qualification") QualificationDetails qualificationDetails, HttpServletRequest request) throws EmployeeNotFoundException{
        Long id = AuthenticationSystem.getId();
        employeeService.addQualification(id, qualificationDetails);
        return "redirect:qualificationdetails";
    }
    
    @GetMapping("familyDetails")
    public String familydetails(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
//        int pg=Integer.parseInt(request.getParameter("pg"));
        List<FamilyDetails> listOfFamilyDetails = employeeService.findFamilyDetails(id,1);
        model.addAttribute("listOfFamilyDetails", listOfFamilyDetails);
        return "myFamily";
    }
    
    @PostMapping("addFamily")
    public String addFamily(@ModelAttribute("family") FamilyDetails familyDetails, HttpServletRequest request) throws EmployeeNotFoundException{
        Long id = AuthenticationSystem.getId();
        employeeService.addFamily(id, familyDetails);
        return "redirect:familyDetails";
    }
    
    
    
    @GetMapping("professionaldetails")
    public String professionaldetails(HttpServletRequest request, Model model) {
        Long id = AuthenticationSystem.getId();
        System.out.println(id);
//        int pg=Integer.parseInt(request.getParameter("pg"));
        List<ProfDetails> listOfProfDetails = employeeService.findProfessionalDetails(id,1);
        
        model.addAttribute("listOfProfession", listOfProfDetails);
        return "myProfession";
    }
    
    @PostMapping("addProfession")
    public String addProfession(@ModelAttribute("profession") ProfDetails profDetails, HttpServletRequest request) throws EmployeeNotFoundException{
        Long id = AuthenticationSystem.getId();
        employeeService.addProfession(id, profDetails);
        return "redirect:professionaldetails";
    }
}
