<?
require_once 'Zend/Db/Adapter/Pdo/Mysql.php';
require_once 'Zend/Auth/Adapter/DbTable.php';
require_once 'Zend/Db.php';
require_once 'Zend/Auth.php';
require_once 'template.php';
require_once 'html_functions.php';

$db = Zend_Db::factory('Mysqli', array(
	'host'     => '127.0.0.1',
	'username' => 'root',
	'password' => '',
	'dbname'   => 'test'
	));
	
	

$auth = Zend_Auth::getInstance(); 
if ($auth->hasIdentity()) { 
	// Identity exists; get it 
	$identity = $auth->getIdentity(); 
} else {
	if (!$DO_NOT_REDIRECT)
		header ("location:login.php");
		
}

$BASE_DIR="/Users/samogabrovec/Sites/uros";
$TEMPLATE_DIR=$BASE_DIR."/templates/";
?>