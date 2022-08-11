<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css">
    <title>Signup</title>
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
          <!-- Tabs Titles -->
          <a href="login.jsp"><h2 class="inactive underlineHover"> Sign In </h2></a>
          <h2 class="active">Sign Up </h2>
    
      
         
          <form method="post" action="registration.jsp">
            <input type="text" id="login" class="fadeIn second" name="username" placeholder="username">
            <input type="text" id="login" class="fadeIn third" name="email" placeholder="email">
            <input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="text" id="location" class="fadeIn third" name="location" placeholder="location">
            <b>Gender</b><input type="radio" name="gender" value="male">Male
            <input type="radio" name="gender" value="male">Female<br>
            <input type="submit" class="fadeIn fourth" value="Signup">
          </form>

      
        
      </div>
    </div>
</body>
</html>