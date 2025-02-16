<?php
 // Starts the session
  session_start();

// Check Login form submitted
  if(isset($_POST['Submit'])){
  
  
  // Define username and associated password array
  $logins = array('admin' => 'admin');

// Check and assign submitted username and password to new variable
  $user_name = isset($_POST['username']) ? $_POST['username'] : '';
  $password = isset($_POST['password']) ? $_POST['password'] : '';
// Check user_name and password existence in defined array
  if (isset($logins[$user_name]) && $logins[$user_name] == $password){
  
  // Success: Set session variables and redirect to Protected page
  $_SESSION['UserData']['username']=$logins[$user_name];
  header("location:ahome.php");
  exit;
  } else {
  
  
  // Unsuccessful attempt: Set error message
  $msg="<span style='color:red'>Invalid Login Details</span>";
  }
  }
    ?>


<!DOCTYPE html>
<head>
    <title>EatEasy</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <div class="nav">

        <div>
            <a href="./admin.php" class="logo">EatEasy</a><br>
            <span class="sub_logo">Get your favourite foods</span>
        </div>

        <div>
            <ul>
                <li><a href="./admin.php">HOME</a></li>
            </ul>
        </div>

    </div>

    <div class="cover">
        
            <div class="cover_div">
                 <div class="login-title">
                    <h1 class="header">Welcome Back<span class="cover_span"> Admin</span></h1>
                </div>

                <div class="login-box">
                    <h2 class="green">Login</h2>
                    <?php if(isset($msg)){?>
<?php echo $msg;?>
<?php } ?>
                    <form action="" name="Login_Form" method="post" class="formflex">
                        <label class="formtext">User Name</label>
                            <input type="text" name="username" class="inputfield" placeholder="admin" required>

                        <label class="formtext">Password</label>
                            <input type="password" name="password" class="inputfield" placeholder="********" required>

                        <input type="submit" name="Submit" class="btn" value="Sign in">
                    </form>
                </div>


            </div>
    </div>

    <div class="footer">
        <div>
            <p class="about-sm">Our technology platform connects customers, restaurant partners and delivery partners, serving their multiple needs. Customers use our platform to search and discover restaurants, read and write customer generated reviews and view and upload photos, order food delivery, book a table and make payments while dining-out at restaurants.</p>
        </div>
        
        <div>
            <a href="" class="dlink">
                <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="currentColor"
              class="svg"
              viewBox="0 0 16 16"
            >
              <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
            </svg>
            </a>
            <a href="" class="dlink">
                <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="currentColor"
              class="svg"
              viewBox="0 0 16 16"
            >
              <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
            </svg>
            </a>
            <a href ="" class="dlink">
                <svg xmlns="http://www.w3.org/2000/svg" class="svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
  <path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
</svg>
            </a>
            <a href="" class="dlink">
               <svg xmlns="http://www.w3.org/2000/svg" class="svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
  <path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
</svg>
            </a>
        </div>

        <div>
            <p>ALL RIGHTS RESERVED | COPYRIGHT © 2022 <span class="cover_span"> EatEasy </span></p>
        </div>
       
    </div>
</body>
</html>