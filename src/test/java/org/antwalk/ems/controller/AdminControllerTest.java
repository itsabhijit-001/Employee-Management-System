package org.antwalk.ems.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import static org.hamcrest.Matchers.*;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Date;

import org.antwalk.ems.model.Admin;
import org.antwalk.ems.pojo.SuccessDetails;
import org.hamcrest.Matchers;
import org.hamcrest.core.IsEqual;

// insert into user(username,password,role,is_enabled, table_pk) values('test-admin','$2a$12$I1pwfNEvxdVTY281JTkcO.X0kFAEAWpSuvhpO8KIln9pR6rojoqE2','ROLE_ADMIN',1,1);
// insert into admin(admin_id, admin_name, admin_email) values(1,"Test Admin","test@admin.nrifintech.com");

// insert into employee_details(email_id) values("test1employee@test.com");
// insert into employee(emp_name, gender, designation, department, year_of_experience, grade_level, doj, emptype, work_email, empstatus, employee_details_emp_det_id) values('Test1', 'male', 'ASE', 'administration', 3, 4, '2020-09-23', 'full time', 'test1employee@nrifintech.com','active', 1);
// insert into user(username,password,table_pk) values('test1employee','$2a$12$I1pwfNEvxdVTY281JTkcO.X0kFAEAWpSuvhpO8KIln9pR6rojoqE2',1);

// insert into employee_details(email_id) values("test2employee@test.com");
// insert into employee(emp_name, gender, designation, department, year_of_experience, grade_level, doj, emptype, work_email, empstatus, employee_details_emp_det_id) values('Test2', 'female', 'security', 'DSE', 5, 2, '2023-03-28', 'part time', 'test2employee@nrifintech.com', 'active', 2);
// insert into user(username,password,table_pk) values('test2employee','$2a$12$I1pwfNEvxdVTY281JTkcO.X0kFAEAWpSuvhpO8KIln9pR6rojoqE2',2);

@SpringBootTest
@AutoConfigureMockMvc
// @WithMockUser(username = "test-admin", password = "test", roles = "ADMIN")
@WithUserDetails("test-admin")
public class AdminControllerTest {

    @Autowired
    private MockMvc mvc;
    
    @Test
    void testActivateEmployee() throws Exception {
        String empIdExists = "1";
        mvc.perform(MockMvcRequestBuilders.post("/admin/activateUser?search=null&pg=1")
        .param("empId", empIdExists))
        .andDo(MockMvcResultHandlers.print())         
        .andExpect(MockMvcResultMatchers.redirectedUrl("/admin/dashboard?search=null&pg=1"))
        .andExpect(MockMvcResultMatchers.flash().attribute("status","SUCCESS"));

        String empIdnotExists = "10";
        mvc.perform(MockMvcRequestBuilders.post("/admin/activateUser?search=null&pg=1")
        .param("empId", empIdnotExists))
        .andDo(MockMvcResultHandlers.print())         
        .andExpect(MockMvcResultMatchers.redirectedUrl("/admin/dashboard?search=null&pg=1"))
        .andExpect(MockMvcResultMatchers.flash().attribute("status","FAILED"));
    }

    @Test
    void testAddProjectManager() throws Exception {

        String pmExists = "1";
        String projIdExists = "1";
        mvc.perform(MockMvcRequestBuilders.post("/admin/addProjectManager?projId="+projIdExists+"&pg=1")
            .param("pm", pmExists))
            .andDo(MockMvcResultHandlers.print())
            .andExpect(MockMvcResultMatchers.flash().attribute("status", "SUCCESS"));

        String pmNotExists = "1";
        String projIdNotExists = "1";
        mvc.perform(MockMvcRequestBuilders.post("/admin/addProjectManager?projId="+projIdNotExists+"&pg=1")
            .param("pm", pmNotExists))
            .andExpect(MockMvcResultMatchers.flash().attribute("status", "FAILED"));
    }

    @Test
    void testAddTeam() {

    }

    @Test
    void testAddTeamManager() {

    }

    @Test
    void testAddTeamMember() {

    }

    @Test
    void testAddTeamToProject() {

    }

    @Test
    void testAddUser() {

    }

    // @Test
    // void testAddemployee() {
        
    // }

    @Test
    void testAddproject() {

    }

    @Test
    void testAddproject2() {

    }

    @Test
    void testAddteam() {

    }

    @Test
    void testAdmindashboard() {

    }

    @Test
    void testAllocateproject() {

    }

    @Test
    void testAllocateteam() {

    }

    @Test
    void testAnalytics() {

    }

    @Test
    void testChangePassword() throws Exception {
        String empIdExists = "1";
        mvc.perform(MockMvcRequestBuilders.post("/admin/changePassword?search=null&pg=1")
        .param("empId", empIdExists)
        .param("changedPassword", "Test1@ntech"))
        .andDo(MockMvcResultHandlers.print())        
        .andExpect(MockMvcResultMatchers.redirectedUrl("/admin/dashboard?search=null&pg=1"))
        .andExpect(MockMvcResultMatchers.flash().attribute("status","SUCCESS"));

        String empIdnotExists = "10";
        mvc.perform(MockMvcRequestBuilders.post("/admin/changePassword?search=null&pg=1")
        .param("empId", empIdnotExists)
        .param("changedPassword","Test10@ntech"))
        .andDo(MockMvcResultHandlers.print())         
        .andExpect(MockMvcResultMatchers.redirectedUrl("/admin/dashboard?search=null&pg=1"))
        .andExpect(MockMvcResultMatchers.flash().attribute("status","FAILED"));
    }

    @Test
    void testDeactivateEmployee() throws Exception {

        String empIdExists = "1";
        mvc.perform(MockMvcRequestBuilders.post("/admin/deactivateUser?search=null&pg=1")
        .param("empId", empIdExists))
        .andDo(MockMvcResultHandlers.print())        
        .andExpect(MockMvcResultMatchers.redirectedUrl("/admin/dashboard?search=null&pg=1"))
        .andExpect(MockMvcResultMatchers.flash().attribute("status","SUCCESS"));

        String empIdnotExists = "10";
        mvc.perform(MockMvcRequestBuilders.post("/admin/deactivateUser?search=null&pg=1")
        .param("empId", empIdnotExists))
        .andDo(MockMvcResultHandlers.print())        
        .andExpect(MockMvcResultMatchers.redirectedUrl("/admin/dashboard?search=null&pg=1"))
        .andExpect(MockMvcResultMatchers.flash().attribute("status","FAILED"));
    }

    @Test
    void testEditTeam() {

    }

    @Test
    void testEditableProjectPage() {

    }

    @Test
    void testEditableTeamPage() {

    }

    @Test
    void testEditemployee() {

    }

    @Test
    void testEditemployeedetails() throws Exception {

        String empIdExist = "1";
        mvc.perform(MockMvcRequestBuilders
        .get("/admin/editemployeedetails?search=null&pg=1&empId="+empIdExist))
        .andDo(MockMvcResultHandlers.print())
        .andExpect(MockMvcResultMatchers.view().name("editUser"))
        .andExpect(MockMvcResultMatchers.model().attribute("status", "SUCCESS")
        );

        String empIdNotExist = "10";
        mvc.perform(MockMvcRequestBuilders
        .get("/admin/editemployeedetails?search=null&pg=1&empId="+empIdNotExist))
        .andDo(MockMvcResultHandlers.print())
        .andExpect(MockMvcResultMatchers.view().name("editUser"))
        .andExpect(MockMvcResultMatchers.model().attribute("status", "FAILED")
        );
    }

    @Test
    void testGenerateEmployeeReport() throws Exception {

        String empIdExists = "1";
        mvc.perform(MockMvcRequestBuilders.get("/admin/report")
        .param("empId", empIdExists))
        .andExpect(MockMvcResultMatchers.content().contentType("application/octet-stream"));

        String empIdNotExists = "10";
        mvc.perform(MockMvcRequestBuilders.get("/admin/report")
        .param("empId", empIdNotExists))
        .andExpect(MockMvcResultMatchers.content().string(Matchers.blankOrNullString()));
    }

    @Test
    void testLeaveAction() {

    }

    @Test
    void testLeaveApprovaldashboard() {

    }

    @Test
    void testProjectallocation() {

    }

    @Test
    void testResignAction() {

    }

    @Test
    void testResignationApprovaldashboard() {

    }

    @Test
    void testTeamallocation() {

    }
}
