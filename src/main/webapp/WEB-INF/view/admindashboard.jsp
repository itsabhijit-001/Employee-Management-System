<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <title>ADMIN DASHBOARD</title>
    <link rel="stylesheet" href="../resources/lib/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/custom/css/admin-dashboard/custom.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </head>

  <body>
    <div class="wrapper">
      <div class="body-overlay" />
      <nav id="sidebar">
        <div class="sidebar-header">
          <h3><img src="../resources/assets/logo.png" class="img-fluid" /><span>NRI Fintech</span></h3>
        </div>
        <ul class="list-unstyled components">
          <li class="active">
            <a href="#" class="dashboard"><i class="material-icons">dashboard</i>
              <span>Dashboard</span></a>
          </li>
          <li>
            <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false">
              <i class="material-icons">playlist_add_check</i>Leave Approval</a>
            <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          </li>
          <!--<li>
                    <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false">
					<i class="material-icons">edit_note</i>Apply Leave</a>
                    <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li> -->
          <li>
            <a href="#project" data-toggle="modal" aria-expanded="false">
              <i class="material-icons">laptop</i>Project Allocation</a>
            <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          </li>
          <li>
            <a href="#team" data-toggle="modal" aria-expanded="false">
              <i class="material-icons">groups</i>Team Allocation</a>
            <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          </li>
          <li>
            <a href="#department" data-toggle="modal" aria-expanded="false">
              <i class="material-icons">work</i>Department Allocation</a>
            <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          </li>
          <li>
            <a href="#hike" data-toggle="modal" aria-expanded="false">
              <i class="material-icons">currency_rupee</i>Appraisal</a>
            <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          </li>

          <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          <!-- </li> -->

          <!--  <li class="dropdown">
                    <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false" 
					class="dropdown-toggle">
					<i class="material-icons">apps</i><span>widgets</span></a>
                    <ul class="collapse list-unstyled menu" id="pageSubmenu2">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
				
				 <li class="dropdown">
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" 
					class="dropdown-toggle">
					<i class="material-icons">equalizer</i>
				
					
					<span>chart</span></a>
                    <ul class="collapse list-unstyled menu" id="pageSubmenu3">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
				  <li class="dropdown">
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" 
					class="dropdown-toggle">
					<i class="material-icons">extension</i><span>ui element</span></a>
                    <ul class="collapse list-unstyled menu" id="pageSubmenu4">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
				
				<li class="dropdown">
                    <a href="#pageSubmenu5" data-toggle="collapse" aria-expanded="false" 
					class="dropdown-toggle">
					<i class="material-icons">border_color</i><span>forms</span></a>
                    <ul class="collapse list-unstyled menu" id="pageSubmenu5">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
               
			   
			   
			   <li class="dropdown">
                    <a href="#pageSubmenu6" data-toggle="collapse" aria-expanded="false" 
					class="dropdown-toggle">
					<i class="material-icons">grid_on</i><span>tables</span></a>
                    <ul class="collapse list-unstyled menu" id="pageSubmenu6">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
               
			   
			     <li class="dropdown">
                    <a href="#pageSubmenu7" data-toggle="collapse" aria-expanded="false" 
					class="dropdown-toggle">
					<i class="material-icons">content_copy</i><span>Pages</span></a>
                    <ul class="collapse list-unstyled menu" id="pageSubmenu7">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
               
               <li class="">
                    <a href="#"><i class="material-icons">date_range</i><span>copy</span></a>
                </li>
				
				 <li  class="">
                    <a href="#"><i class="material-icons">library_books</i><span>Calender
					</span></a>
                </li>-->
                <li>
            <a href="#adminprofile" data-toggle="modal" aria-expanded="false">
              <i class="material-icons">account_circle</i>Profile</a>
            <!-- <ul class="collapse list-unstyled menu" id="homeSubmenu1">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul> -->
          </li>


        </ul>


      </nav>
      <div id="project" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <form action="proAlloc" method="post">
              <div class="modal-header">
                <h4 class="modal-title">PROJECT ALLOCATION</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label>Team Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                  <label>Project Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <!-- <div class="form-group">
            <label>Address</label>
            <textarea class="form-control" required></textarea>
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="text" class="form-control" required>
          </div> -->
              </div>
              <div class="modal-footer">
                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                <input type="submit" class="btn btn-success" value="Add">
              </div>
            </form>
          </div>
        </div>
      </div>

      <div id="team" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <form action="teamAlloc" method="post">
              <div class="modal-header">
                <h4 class="modal-title">TEAM ALLOCATION</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label>Employee Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                  <label>Team Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <!-- <div class="form-group">
            <label>Address</label>
            <textarea class="form-control" required></textarea>
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="text" class="form-control" required>
          </div> -->
              </div>
              <div class="modal-footer">
                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                <input type="submit" class="btn btn-success" value="Add">
              </div>
            </form>
          </div>
        </div>
      </div>

      <div id="department" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <form action="deptAlloc" method="post">
              <div class="modal-header">
                <h4 class="modal-title">DEPARTMENT ALLOCATION</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label>Employee Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                  <label>Department Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <!-- <div class="form-group">
            <label>Address</label>
            <textarea class="form-control" required></textarea>
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="text" class="form-control" required>
          </div> -->
              </div>
              <div class="modal-footer">
                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                <input type="submit" class="btn btn-success" value="Add">
              </div>
            </form>
          </div>
        </div>
      </div>

      <div id="hike" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <form action="hike" method="post">
              <div class="modal-header">
                <h4 class="modal-title">APPRAISAL</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label>Employee Name</label>
                  <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                  <label>Hike</label>
                  <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                  <label>Hike Date</label>
                  <input type="date" class="form-control" required>
                </div>
                <!-- <div class="form-group">
            <label>Address</label>
            <textarea class="form-control" required></textarea>
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="text" class="form-control" required>
          </div> -->
              </div>
              <div class="modal-footer">
                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                <input type="submit" class="btn btn-success" value="Add">
              </div>
            </form>
          </div>
        </div>
      </div>

      <div id="adminprofile" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <form action="hike" method="post">
              <div class="modal-header">
                <h4 class="modal-title">ADMIN PROFILE</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
              <ul>
         <li>
         	<p><b>Admin id:</b>
            ${admin.adminId}
         	</p>
         </li>
         <li>
           <p><b>Admin name:</b>
            ${admin.adminName}
         </p>
         </li>
         <li>
           <p><b>Admin email:</b>
            ${admin.adminEmail}
         </p>
         </li>
      </ul>
                </div>
                
              <div class="modal-footer">
                <input type="button" class="btn btn-default" data-dismiss="modal" value="Close">
                
              </div>
            </form>
          </div>
        </div>
      </div>



      


      <!--------page-content---------------->

      <div id="content">

        <!--top--navbar----design--------->

        <div class="top-navbar">
          <div class="xp-topbar">

            <!-- Start XP Row -->
            <div class="row">
              <!-- Start XP Col -->
              <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
                <div class="xp-menubar">
                  <span class="material-icons text-white">signal_cellular_alt
                  </span>
                </div>
              </div>
              <!-- End XP Col -->

              <!-- Start XP Col -->
              <div class="col-md-5 col-lg-3 order-3 order-md-2">
                <div class="xp-searchbar">
                  <form>
                    <div class="input-group">
                      <input type="search" class="form-control" placeholder="Search">
                      <div class="input-group-append">
                        <button class="btn" type="submit" id="button-addon2">GO</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <!-- End XP Col -->

              <!-- Start XP Col -->
              <div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
                <div class="xp-profilebar text-right">
                  <nav class="navbar p-0">
                    <ul class="nav navbar-nav flex-row ml-auto">
                      <li>
                        <a href="../logout"><span class="material-icons">logout</span> Logout</a>
                      </li>
                      <!--  <li class="dropdown nav-item active">
                                <a href="#" class="nav-link" data-toggle="dropdown">
                                   <span class="material-icons">notifications</span>
								   <span class="notification">4</span>
                               </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">You have 5 new messages</a>
                                    </li>
                                    <li>
                                        <a href="#">You're now friend with Mike</a>
                                    </li>
                                    <li>
                                        <a href="#">Wish Mary on her birthday!</a>
                                    </li>
                                    <li>
                                        <a href="#">5 warnings in Server Console</a>
                                    </li>
                                  
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
								<span class="material-icons">question_answer</span>

								</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" data-toggle="dropdown">
								<img src="img/user.jpg" style="width:40px; border-radius:50%;"/>
								<span class="xp-user-live"></span>
								</a>
								<ul class="dropdown-menu small-menu">
                                    <li>
                                        <a href="#">
										  <span class="material-icons">person_outline</span>Profile

										</a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="material-icons">settings</span>Settings</a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="material-icons">logout</span>Logout</a>
                                    </li>
                                </ul>
                            </li>-->
                    </ul>


                  </nav>

                </div>
              </div>
              <!-- End XP Col -->

            </div>
            <!-- End XP Row -->

          </div>
          <div class="xp-breadcrumbbar text-center">
            <h4 class="page-title">Dashboard</h4>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Booster</a></li>
              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
            </ol>
          </div>

        </div>



        <!--------main-content------------->

        <div class="main-content">
          <div class="row">

            <div class="col-md-12">
              <div class="table-wrapper">
                <div class="table-title">
                  <div class="row">
                    <div class="col-sm-6 p-0 d-flex justify-content-lg-start justify-content-center">
                      <h2 class="ml-lg-2">Manage Employees</h2>
                    </div>
                    <div class="col-sm-6 p-0 d-flex justify-content-lg-end justify-content-center">
                      <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                        <i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>
                      <!--  <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">
		  <i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->
                    </div>
                  </div>
                </div>
                <table class="table table-striped table-hover">
                  <thead>
                    <tr>
                      <th>
                        <span class="custom-checkbox">
                          <input type="checkbox" id="selectAll">
                          <label for="selectAll"></label>
                        </span>
                      </th>
                      <th>ID</th>
                      <th>NAME</th>
                      <th>DESIGNATION</th>
                      <th>STATUS</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <span class="custom-checkbox">
                          <input type="checkbox" id="checkbox1" name="options[]" value="1">
                          <label for="checkbox1"></label>
                        </span>
                      </td>
                      <td>${employee.empId}</td>
                      <td>${employee.empName}</td>
                      <td>${employee.designation}</td>
                      <td>${employee.empstatus}</td>
                      <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                      </td>
                    </tr>
                    <!--  <tr>
                      <td>
                        <span class="custom-checkbox">
                          <input type="checkbox" id="checkbox2" name="options[]" value="1">
                          <label for="checkbox2"></label>
                        </span>
                      </td>
                      <td>Dominique Perrier</td>
                      <td>dominiqueperrier@mail.com</td>
                      <td>Obere Str. 57, Berlin, Germany</td>
                      <td>(313) 555-5735</td>
                      <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <span class="custom-checkbox">
                          <input type="checkbox" id="checkbox3" name="options[]" value="1">
                          <label for="checkbox3"></label>
                        </span>
                      </td>
                      <td>Maria Anders</td>
                      <td>mariaanders@mail.com</td>
                      <td>25, rue Lauriston, Paris, France</td>
                      <td>(503) 555-9931</td>
                      <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <span class="custom-checkbox">
                          <input type="checkbox" id="checkbox4" name="options[]" value="1">
                          <label for="checkbox4"></label>
                        </span>
                      </td>
                      <td>Fran Wilson</td>
                      <td>franwilson@mail.com</td>
                      <td>C/ Araquil, 67, Madrid, Spain</td>
                      <td>(204) 619-5731</td>
                      <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <span class="custom-checkbox">
                          <input type="checkbox" id="checkbox5" name="options[]" value="1">
                          <label for="checkbox5"></label>
                        </span>
                      </td>
                      <td>Martin Blank</td>
                      <td>martinblank@mail.com</td>
                      <td>Via Monte Bianco 34, Turin, Italy</td>
                      <td>(480) 631-2097</td>
                      <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                          <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                         <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
			<i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                      </td>
                    </tr>-->
                  </tbody>
                </table>
                <div class="clearfix">
                  <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                  <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- Edit Modal HTML -->
            <div id="addEmployeeModal" class="modal fade">
              <div class="modal-dialog">
                <div class="modal-content">
                  <form>
                    <div class="modal-header">
                      <h4 class="modal-title">Add Employee</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                      <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" required></textarea>
                      </div>
                      <div class="form-group">
                        <label>Phone</label>
                        <input type="text" class="form-control" required>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                      <input type="submit" class="btn btn-success" value="Add">
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- Edit Modal HTML -->
            <div id="editEmployeeModal" class="modal fade">
              <div class="modal-dialog">
                <div class="modal-content">
                  <form>
                    <div class="modal-header">
                      <h4 class="modal-title">Edit Employee</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                      <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" required></textarea>
                      </div>
                      <div class="form-group">
                        <label>Phone</label>
                        <input type="text" class="form-control" required>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                      <input type="submit" class="btn btn-info" value="Save">
                    </div>
                  </form>
                </div>
              </div>
            </div>



            <!-- Delete Modal HTML -->
            <div id="deleteEmployeeModal" class="modal fade">
              <div class="modal-dialog">
                <div class="modal-content">
                  <form>
                    <div class="modal-header">
                      <h4 class="modal-title">Delete Employee</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                      <p>Are you sure you want to delete these Records?</p>
                      <p class="text-warning"><small>This action cannot be undone.</small></p>
                    </div>
                    <div class="modal-footer">
                      <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                      <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                  </form>
                </div>
              </div>
            </div>


          </div>


          <!---footer---->


        </div>

        <footer class="footer">
          <div class="container-fluid">
            <div class="footer-in">
              <p class="mb-0">NRI FinTech - All Rights Reserved.</p>
            </div>
          </div>
        </footer>
      </div>
    </div>


    <!----------html code complete----------->








    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
  </body>

  
  <script src="../resources/lib/popper/popper.min.js" type="text/javascript" />
  <script src="../resources/lib/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript" />
  <script src="../resources/lib/jquery/jquery-3.3.1.min.js" type="text/javascript" />
  <script src="../resources/js/admin-dashboard/jquery-3.3.1.slim.min.js" type="text/javascript"/>
  <!-- <script src="../resources/custom/js/admin-dashboard/navtoggle.js" type="text/javascript" />-->
  
  <script type="text/javascript">
        
		$(document).ready(function(){
		  $(".xp-menubar").on('click',function(){
		    $('#sidebar').toggleClass('active');
			$('#content').toggleClass('active');
		  });
		  
		   $(".xp-menubar,.body-overlay").on('click',function(){
		     $('#sidebar,.body-overlay').toggleClass('show-nav');
		   });
		  
		});
		
</script>
  </html>