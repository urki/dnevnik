<?
require_once("inc/config.php");


$tem = template_open("main.tpl");
$tem = template_add_head_foot($tem);

$tem = str_replace('##USER##',$identity,$tem);
$tem=template_clean_up_tags($tem,"##");
echo $tem;

?>