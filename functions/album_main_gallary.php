
<ul class="thumbnails gallery" >


										


										
						<?php
						if(!empty($_REQUEST['alid']))
{
	$alid1=$_REQUEST['alid'];

	 $sql="SELECT * FROM `image` WHERE `album_id` = $alid1 ORDER BY `id` DESC";
}
else
{
		 $sql="SELECT * FROM `image` ORDER BY `id` DESC";
	
	
}
						
							include('functions/connection.php');
														
		$result12 = mysql_query("$sql") or die("<b>Error:</b> Problem on Retrieving Image BLOB<br/>" . mysql_error());
		while($res=mysql_fetch_assoc($result12))
		{
			$pis=$res['id'];
			$path=$res['full_path'];
			$fname=$res['file_name'];
			$exe=$res['file_ext'];
			?>
                    
						
				
                                                    <li id="image-<?php echo $pis?>" class="thumbnail">
												
			

                                <a
                                   title="Sample Image 1" href="gallarycms/uploads/<?php echo $fname;?>">
								   <img
                                        class="grayscale" src="gallarycms/uploads/<?php echo $fname;?>"
                                        alt="Sample Image 1"></a>
                            </li>
							<?php
									}
													
													
													?>
                                                    
							  </ul>
