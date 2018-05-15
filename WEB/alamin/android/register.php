<?PHP

include("connection.php");

if(isset($_POST['username'])&& isset($_POST['password']))
{
	// $name=$_POST["name"];
    $username=$_POST["username"];
    $password=$_POST["password"];
    
	$result = mysqli_query($conn, "SELECT username FROM admin WHERE username = '".$username."'");	
	if(mysqli_num_rows($result) > 0)
	{	
		echo "username telah ada";
		exit;
	}			
	else
	{	
      $query="INSERT INTO admin(id_user,username,password)VALUES('','$username','$password')";

      $data=mysqli_query($conn,$query);
 
    if($data)
      {
            echo "Successfully Signed In";
      }
    else
      {
            echo "Error Sign in";
      }

		exit;
	}	
}				

?>