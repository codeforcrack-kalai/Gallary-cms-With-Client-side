<?php
include("connection.php");
    if(isset($_REQUEST['image_id'])) {
		

	

		
		$id=$_GET['image_id'];
		
       //$sql = "SELECT imageType,imageData FROM output_images WHERE imageId=" . "";
		// $sql="SELECT  imageType,imageData FROM ` output_images` WHERE `imageId` = $id";
		 
		 $sql="SELECT file_type,img_data FROM `posts` WHERE `p_id` = $id";
		$result12 = mysql_query("$sql") or die("<b>Error:</b> Problem on Retrieving Image BLOB<br/>" . mysql_error());
		$row = mysql_fetch_array($result12);
		header("Content-type: " . $row["img_type"]);
        echo $row["img_data"];
	


	}

?>
