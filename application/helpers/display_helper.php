<?php

/* ========================================================
*
* Display Helper 
*
* ======================================================== */


/* ========================================================
	set_flash_message()
	Sets a flash message with a class
/* ======================================================== */

if( ! function_exists('set_flash_message')){

	function set_flash_message($string, $class='info'){
	
		$CI =& get_instance();
	
		$message['message'] = $string;

		$message['message_class'] = $class;

		$CI->session->set_flashdata($message);
	
	}
	
}

/* ========================================================
	urlprep
	Transofrm into URL
	
/* ======================================================== */
if ( ! function_exists('urlprep')){

	function urlprep($input){

		$input = str_replace( array('à','á','â','ã','ä', 'ç', 'è','é','ê','ë', 'ì','í','î','ï', 'ñ', 'ò','ó','ô','õ','ö', 'ù','ú','û','ü', 'ý','ÿ', 'À','Á','Â','Ã','Ä', 'Ç', 'È','É','Ê','Ë', 'Ì','Í','Î','Ï', 'Ñ', 'Ò','Ó','Ô','Õ','Ö', 'Ù','Ú','Û','Ü', 'Ý'), array('a','a','a','a','a', 'c', 'e','e','e','e', 'i','i','i','i', 'n', 'o','o','o','o','o', 'u','u','u','u', 'y','y', 'A','A','A','A','A', 'C', 'E','E','E','E', 'I','I','I','I', 'N', 'O','O','O','O','O', 'U','U','U','U', 'Y'), $input);

		$input = str_replace(array("'", "_"), "-", $input); //remove single quote and dash
		
		$input = mb_convert_case($input, MB_CASE_LOWER, "UTF-8"); //convert to lowercase
		
		$input = preg_replace("#[^a-zA-Z0-9]+#", "-", $input); //replace everything non an with dashes
		
		$input = preg_replace("#(-){2,}#", "$1", $input); //replace multiple dashes with one
		
		$input = trim($input, "-"); //trim dashes from beginning and end of string if any

		return $input;	
	}	

}


/* End of file display_helper.php */
/* Location: ./application/helpers/display_helper.php */
?>