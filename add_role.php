<?
require_once("inc/config.php");

$tem = template_open("add_role.tpl");
$tem = template_add_head_foot($tem);

$name = $_REQUEST['name'];

if ($_REQUEST['add'] == "Dodaj") {
	if ($name ) {
		//pogledamo kaj imamo in ce je ze tak notr slucajn..        
		$sql = "SELECT id_role FROM roles  where name='$name'"; 
		
		$result = $db->fetchOne($sql); 
	
		if ( $result ) {
			$message.="Role ze obstaja";
		} else {
			//dejansko vnesemo 
			$data = array( 
			    'name'      => $name
			); 
			$db->insert('roles', $data); 
			$message .= "Role je  dodano..";
			
		}

	} else {
		$message.= "Izpolni vsa polja!"; 
	}
}



$tem = str_replace("##MESSAGE##",$message,$tem);
$tem = template_clean_up_tags($tem,"##");
echo $tem;

?>