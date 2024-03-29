<?
$DO_NOT_REDIRECT="true";

require_once("inc/config.php");

$user = $_REQUEST["user"];
$pass = $_REQUEST["pass"];

$tem = template_open("login.tpl");
$tem = template_add_head_foot($tem);
if ($user and $pass) {	
	// Set up the authentication adapter 
	$authAdapter = new Zend_Auth_Adapter_DbTable($db);
	$authAdapter
		->setTableName('persons')
		->setIdentityColumn('username')
		->setCredentialColumn('passwd');
	$authAdapter
		->setIdentity($user)
		->setCredential($pass);

	// Attempt authentication, saving the result 
	$result = $auth->authenticate($authAdapter); 

	if (!$result->isValid()) { 
		// Authentication failed; print the reasons why 
		foreach ($result->getMessages() as $message) { 
			 $m.=$message; 
		} 
		$tem=str_replace("##MESSAGE##",$m,$tem);
		$tem=template_clean_up_tags($tem,"##");
		echo $tem;
	} else { 
		header("location:index.php");
	} 
} else {
	$tem=template_clean_up_tags($tem,"##");
	echo $tem;
}
?>