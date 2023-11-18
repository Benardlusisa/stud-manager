
    <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="css/nav.css"> 

</head>
<body>

<div class="navbar">

  <a href="dashboard.php">Dashboard | </a>
  <!-- <a href="#news">News</a> -->

  <div class="dropdown">
    <button class="dropbtn">Students
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="add-student.php" style="font-size : 20px">Add Students</a>
      <a href="manage-students.php" style="font-size : 20px">Manage Students</a>
      <!-- <a href="#">Link 3</a> -->
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Course 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="add-branch.php" style="font-size : 20px">Add Course</a>
      <a href="manage-branch.php" style="font-size : 20px">Manage Course</a>
      <!-- <a href="#">Link 3</a> -->
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Year
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="add-semester.php" style="font-size : 20px">Add Year</a>
      <a href="manage-sem.php" style="font-size : 20px">Manage Year</a>
      <!-- <a href="#">Link 3</a> -->
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Units
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="add-subjects.php" style="font-size : 20px">Add Units</a>
      <a href="manage-subjects.php" style="font-size : 20px">Manage Units</a>
      <a href="add-subjcombo.php" style="font-size : 20px">Add Unit Combination</a>
      <a href="manage-subjcomb.php" style="font-size : 20px">Manage Unit Combination</a>
      <!-- <a href="#">Link 3</a> -->
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Result 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="add-results.php" style="font-size : 20px">Add result</a>
      <a href="manage-results.php" style="font-size : 20px">Manage results</a>
      <!-- <a href="#">Link 3</a> -->
    </div>
  </div> 
  <a href="change-password.php"style="font-size : 23px" >Admin Change Password </a>
  <a href="logout.php"style="font-size : 23px; float:right; margin-right : 10px" ><i class="fa fa-sign-out"></i> Logout </a>

</div>

</body>
</html>