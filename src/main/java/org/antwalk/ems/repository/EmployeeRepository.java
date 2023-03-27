package org.antwalk.ems.repository;

import java.util.List;

import javax.transaction.Transactional;


import org.antwalk.ems.model.Employee;
import org.antwalk.ems.model.LeaveApplication;
import org.antwalk.ems.model.QualificationDetails;
import org.antwalk.ems.model.Team;
import org.antwalk.ems.view.EmployeeListView;
import org.antwalk.ems.view.EmployeeSelectionView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


@Repository
public interface EmployeeRepository extends JpaRepository<Employee,Long>  {
    
    @Query("select e.empId as empId, e.empName as empName, e.workEmail as workEmail, e.designation as designation, e.empstatus as empstatus, e.gradeLevel as gradeLevel, e.emptype as emptype from Employee e")
    public Page<EmployeeListView> findAllEmployeeListViews(Pageable pageable);


    @Query("select e.empId as empId, e.empName as empName from Employee e")
    public List<EmployeeSelectionView> findAllEmployeeNames();
    
    @Query("select e.empId as empId, e.empName as empName from Employee e where e.department = :department and e.team=null and e.empstatus='active'")
    public List<EmployeeSelectionView> findAllEmployeeNamesByDepartment(String department);

    @Query("select e.empId as empId, e.empName as empName from Employee e where e.department = :department and e.team=null and e.empstatus='active' and e.yearOfExperience>=2")
    public List<EmployeeSelectionView> findAllPotentialTM(String department);

    @Query("select e.empId as empId, e.empName as empName, e.workEmail as workEmail, e.designation as designation, e.empstatus as empstatus, e.gradeLevel as gradeLevel, e.emptype as emptype from Employee e where e.empName like :search%")
    public Page<EmployeeListView> findAllEmployeeListViewsWithSearch(Pageable pageable, String search);

    @Query("select e from Employee e where e.empName like :search%")
    public Page<Employee> findAllBySearch(Pageable pageable, String search);

    @Query("select count(*) from Employee e where e.empName like :search%")
    public int countBySearch(String search);

    @Transactional
    @Modifying
    @Query("update Employee e set e.empstatus = 'inactive' where empId = :empId")
    public void deactivateEmpById(Long empId);

    @Transactional
    @Modifying
    @Query("update Employee e set e.empstatus = 'active' where empId = :empId")
    public void activateEmpById(Long empId);

    @Query("select workEmail from Employee e where empId = :empId")
    public String getWorkEmailByEmpId(Long empId);

    @Query("select empName from Employee e where empId = :empId")
    public String getEmpNameByEmpId(Long empId);
    
    @Query("SELECT COUNT(*) as count FROM Employee GROUP BY emptype ORDER BY CASE emptype WHEN 'full time' THEN 0 WHEN 'part time' THEN 1 WHEN 'contract' THEN 2 END")
    List<String> emptype();

    @Query("select leaves from Employee e where e.empId = :empId")
    public List<LeaveApplication> getLeavesById(Long empId);
    
    @Query("SELECT COUNT(*) AS count, MONTH(doj) AS month FROM Employee GROUP BY MONTH(doj) ORDER BY MONTH(doj)")
    public List<Integer> recruitment();
    
    @Query("SELECT COUNT(*) as count FROM Employee GROUP BY gender ORDER BY CASE gender WHEN 'male' THEN 0 WHEN 'female' THEN 1 WHEN 'other' THEN 2 END")
    public List<Integer> sexratio();
    
    @Query("SELECT COUNT(*) as employeecount FROM Employee  GROUP BY department")
    List<Integer> findemployeecount();
    
    @Query("select SUM(ctc) FROM Employee GROUP BY department")
    List<Double> totalcost();
    
    @Query("select DISTINCT department FROM Employee")
    List<String> deptname();
    
    
    
    

    @Transactional
    @Modifying
    @Query("update Employee e set e.team.teamId = null where e.team.teamId = :teamId")
    void updateTeam(Long teamId);

    @Transactional
    @Modifying
    @Query("update Employee e set e.team.teamId = null where e.empId = :id")
    void updateDepartment(Long id);

    @Query("select e.empId as empId, e.empName as empName from Employee e where and e.empstatus='active' and e.yearOfExperience>=3")
	public List<EmployeeSelectionView> findAllPotentialPM();

}
