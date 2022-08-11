<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
<jsp:include page="assets/include/header.jsp" />
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Recruitment</h1>
                      <h1>STAFF INFORMATION</h1>
        <form method="post" action="/meatking/Hr">
            <label>First Name:</label>
            <input type="text" name="fname"><br/><br/><!-- this is the staff first name -->
             <label>Last Name:</label>
            <input type="text" name="lname"><br/><br/>
             <label>Email Address:</label>
            <input type="text" name="email"><br/><br/>
             <label>Contact:</label>
            <input type="text" name="contact"><br/><br/>
             <label>Age:</label>
            <input type="text" name="age"><br/><br/>
             <label>Gender:</label>
             <select name="gend" >
                 <option value="Female">F</option> 
                 <option value="Male">M</option>
             </select><br/><br/>
             <label>Product LIne:</label>
             <select name="productline" >
                 <option value="Long-term">Long-term</option> 
                 <option value="Mid-term">Mid-term</option>
                 <option value="Short-term">Short-term</option>
                 
             </select>
             
             <br/><br/>
             <input type="submit" name="save "value="RECRUIT">
             <input type="reset" name="reset "value="CLEAR">
             
        </form>
        
                    

                </div>
                <!-- /.container-fluid -->
<jsp:include page="assets/include/footer.jsp" />
            
</body>

</html>