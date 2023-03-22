package org.antwalk.ems.repository;

import java.util.List;

import org.antwalk.ems.model.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectRepository extends JpaRepository<Project,Long> {
    
	
//	   @Query ("SELECT p.projectName FROM team_project tp JOIN Project p ON tp.proj_id = p.projId GROUP BY tp.proj_id")
//	   List<String> teamsinprojects();
//	   
//	   @Query("SELECT COUNT(*) as teamcount FROM team_project  GROUP BY proj_id")
//	   List<Integer> findteamcount();
	
}
