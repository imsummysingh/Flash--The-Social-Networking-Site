<html>
<head>
<title>Verification Card</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="<?= ACC_SCRIPTROOT ?>css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="index.php">FLASH <span class="glyphicon glyphicon-flash" aria-hidden="true"></span></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
         
        </ul>
      </div>
    </nav>
    <div class="container">

        <div style="width: 500px; margin: 50px auto;">
            <form method="post" action="login.php" autocomplete="off">
                <center><h2>Verify Your Aadhar Card</h2></center>
                <hr/>
                
                <div class="form-group">
                    <label for="aadhar" class="control-label">Aadhar Card Number</label>
                    <input type="aadhar" name="aadhar" class="form-control" autocomplete="off" placeholder="XXXX-XXXX-XXXX-XXXX">
                    <span class="text-danger">
                </div>
                
                <div class="form-group">
                    <a href="signup"><center><input type="submit" name="btn-login" value="Verify" class="btn btn-primary"></center></a>
                </div>
                <hr/>
                
               
            </form>
        </div>
    </div>
</body>
</html>