<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');



/* ========================================================
	ROUTES FILE ACTUALLY BEGINS HERE
/* ======================================================== */
	
$route['default_controller'] = "home";

#Any Routes

$route['(:any)'] = "home/index";

$route['run'] = "home/run";


/* End of file routes.php */
/* Location: ./application/config/routes.php */