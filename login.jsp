<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css">
    <title>Login</title>
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
          <!-- Tabs Titles -->
          <h2 class="active"> Sign In </h2>
          <a href="signup.jsp"><h2 class="inactive underlineHover">Sign Up </h2></a>

      
          <!-- Login Form -->
          <form action="login" method="post">
             
            <input type="text" id="login" class="fadeIn second" name="username" placeholder="username">
            <input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="submit" class="fadeIn fourth" value="Log In">
          </form>
      
      
        </div>
      </div>
</body>
</html>