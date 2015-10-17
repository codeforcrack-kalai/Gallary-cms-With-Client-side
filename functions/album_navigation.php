					<ol class="breadcrumb">
										
										
					
		
		
		 <li>Albums</li>			
  <li><a href="index.php?alname=all" style="">All Albums</a></li>
  <?php  
						include('functions/connection.php');
						
						$sql2="SELECT * FROM `album`";
						
						$result12= mysql_query("$sql2") or die("<b>Error:</b> Problem on Retrieving Image BLOB<br/>" . mysql_error());
						
						
	while($res=mysql_fetch_assoc($result12))
		{
			
			
			$aname=$res['name'];
			$aid=$res['id'];
			
		
		?>
		
		
		
  <li ><a   href="index.php?alid=<?php echo $aid; ?>"><?php echo $aname; ?></a></li>
  
  <?php
}
					
						?>

</ol>
