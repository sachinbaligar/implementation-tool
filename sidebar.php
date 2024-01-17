 
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <div class="dropdown">
   	<a href="javascript:void(0)" class="brand-link dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
        <span class="brand-image img-circle elevation-3 d-flex justify-content-center align-items-center bg-primary text-white font-weight-500" style="width: 38px;height:50px"><?php echo strtoupper(substr($_SESSION['login_firstname'], 0,1)) ?></span>
        <span class="brand-text font-weight-light"><?php echo ucwords($_SESSION['login_firstname'].' ') ?></span>

      </a>
      <div class="dropdown-menu" >
        <a class="dropdown-item manage_account" href="javascript:void(0)" data-id="<?php echo $_SESSION['login_id'] ?>">Manage Account</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="ajax.php?action=logout">Logout</a>
      </div>
    </div>
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item dropdown">
            <a href="./" class="nav-link nav-home">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
            
          </li>    
        <?php if($_SESSION['login_type'] == 1): 

         $_SESSION['user_role'] = 'staff';

              $userRole = isset($_SESSION['user_role']) ? $_SESSION['user_role'] : 'unknown';?>

          <li class="nav-item">
            <a href="#" class="nav-link nav-edit_user1">
              <i class="nav-icon fas fa-users"></i>
              <p>
                PM's
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_pm's" class="nav-link nav-new_user tree-item1">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New Pm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=user_list" class="nav-link nav-user_list tree-item1">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_survey nav-view_survey2">
              <i class="nav-icon fas fa-list"></i>
              <p>
                Vendor
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_vendor" class="nav-link nav-new_survey tree-item2">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New Vendor</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=vendor_list" class="nav-link nav-survey_list tree-item2">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=vrf" class="nav-link nav-survey_list tree-item2">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>vrf</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=vrf_list" class="nav-link nav-survey_list tree-item2">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>vrf List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_survey nav-view_survey3">
              <i class="nav-icon fas fa-folder"></i>
              <p>
                Project
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_project" class="nav-link nav-new_survey tree-item3">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New Project</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=project_list" class="nav-link nav-survey_list tree-item3">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_survey nav-view_survey4">
              <i class="nav-icon fas fa-list"></i>
              <p>
                Implementation
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_implementation" class="nav-link nav-new_survey tree-item4">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p> New Implementation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=implementation_list" class="nav-link nav-survey_list tree-item4">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- <li class="nav-item">
            <a href="./index.php?page=survey_report" class="nav-link nav-survey_report">
              <i class="nav-icon fas fa-poll"></i>
              <p>
                Survey Report
              </p>
            </a>
          </li>      -->
        <?php else: ?>


          <li class="nav-item">
            <a href="./index.php?page=survey_widget" class="nav-link nav-survey_widget nav-answer_survey">
              <i class="nav-icon fas fa-poll-h"></i>
              <p>
                Survey List
              </p>
            </a>
          </li>  
          <?php
// Assuming you have a way to determine the user role, replace this with your actual logic.
// For demonstration purposes, I'll use a placeholder value.
$userRole = 'staff';

// Define the $ManageAccount variable based on the user role.
$ManageAccount = ($userRole == 'staff');

?>

<!-- Now you can use $ManageAccount without encountering the "Undefined variable" warning -->
<li class="nav-item">
    <a href="#" class="nav-link nav-is-tree nav-edit_survey nav-view_survey3">
        <i class="nav-icon fa fa-poll-h"></i>
        <p>
            Project
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <?php if ($ManageAccount): ?>
            <li class="nav-item">
                <a href="./index.php?page=new_project" class="nav-link nav-new_survey tree-item3">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Add New Project</p>
                </a>
            </li>
        <?php endif; ?>
        <li class="nav-item">
            <a href="./index.php?page=project_list" class="nav-link nav-survey_list tree-item3">
                <i class="fas fa-angle-right nav-icon"></i>
                <p>List</p>
            </a>
        </li>
    </ul>
</li>

        
	                    
	              
          

          <!-- <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_survey nav-view_survey3">
              <i class="nav-icon fa fa-poll-h"></i>
              <p>
                Project
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_project" class="nav-link nav-new_survey tree-item3">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New Project</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=project_list" class="nav-link nav-survey_list tree-item3">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
               <!-- -->
            </ul>
          </li> -->
        




          <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_survey nav-view_survey4">
              <i class="nav-icon fa fa-poll-h"></i>
              <p>
                Implementation
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=implementation" class="nav-link nav-new_survey tree-item4">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p> New Implementation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=implementation_list" class="nav-link nav-survey_list tree-item4">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>

        <?php endif; ?>
        </ul>
      </nav>
    </div>
  </aside>
  <script>
  	$(document).ready(function(){
  		var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
  		if($('.nav-link.nav-'+page).length > 0){
  			$('.nav-link.nav-'+page).addClass('active')
          console.log($('.nav-link.nav-'+page).hasClass('tree-item'))
  			if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
          $('.nav-link.nav-'+page).closest('.nav-treeview').siblings('a').addClass('active')
  				$('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
  			}
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

  		}
      $('.manage_account').click(function(){
        uni_modal('Manage Account','manage_user.php?id='+$(this).attr('data-id'))
      })
  	})
  </script>