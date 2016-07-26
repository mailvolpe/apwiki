<?php

class Element extends CI_Model {

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		
		$this->main_node = $this->get_item(1);
		
		$this->load->vars(array('main_node' => $this->get_item(1)));
	 
    }

	function flag($element, $flag=1){
		
		if($element->element_id == $this->main_node->element_id){
		
			return false;
			
		}
		
		$element->abuse_report = $flag;
		
		
		$element_path = $element->element_path;
		
		unset($element->element_path);
		
		$this->db->where('element_id', $element->element_id);

		$this->db->update('elements', $element); 
		
		#echo $this->db->_error_message().$this->db->last_query(); # Debug assist
		
		$element->element_path = $element_path;
		
		if($this->db->affected_rows()>0){

			return true;

		}else if($this->db->_error_message()){

			return false;

		}		
	
	}
	
	function remove($element){
	
	
		if($element->element_id == $this->main_node->element_id){
		
			return false;
			
		}
		
		$this->db->where('element_id', $element->element_id);

		$this->db->delete('elements'); 
		
		if($this->db->affected_rows()>0){

			return true;

		}else if($this->db->_error_message()){

			return false;

		}		
	
	}
	
	function create($parent_element_id){
		
		$element = new stdClass;
		
		$element->title = $this->input->post('title');
		$element->title_slug = urlprep($this->input->post('title'));
		$element->short_desc = $this->input->post('short_desc');
		$element->long_desc = $this->input->post('long_desc');
		$element->parent_element_id = $parent_element_id;
		
		#CHECK IF SLUG IS AVAILABLE
		$check_item = $this->get_item_by_slug($element->title_slug, $element->parent_element_id);
	
		if($check_item){
			
			return false;
		
		}else{
			
			$insert = $this->db->insert('elements', $element);
			
			#echo $this->db->_error_message().$this->db->last_query(); # Debug assist
		
			return $this->db->insert_id();
		
		}
		
		
	}
	
    function index($parent_node=false){

		if(!$parent_node){$parent_node=$this->main_node;}
		
		# Joins #
		
		# Filters #
	
		$this->db->where('parent_element_id', $parent_node);
		
		if($this->input->get('clean')=='true'){
		
			$this->db->where('abuse_report', 0);
		
		}		
		
		#Limit & Offset
		
		#$this->db->limit(get_limit());

		#$this->db->offset($this->input->get('offset'));

		$this->db->order_by('element_id');
		
		#Performs query
		
		$query = $this->db->get('elements');
		
		#Return
		
		#echo $this->db->_error_message().$this->db->last_query(); # Debug assist

		$items = array();
		
		foreach($query->result() as $key=>$item){
		
			$items[$key] = $item;
			$items[$key]->element_path = $this->Element->get_element_path($item->element_id);
		
		}		
		
		return $items;

    } 	

	function get_breadcrumbs($segments){
	
		return $this->get_item_by_uri($segments, true);
		
	}
	
	function get_item_by_uri($segments, $return_breadcrumbs=false){
	
		if(!$segments){
			return array();
		}
	
		$breadcrumbs = array();
	
		$parent_element_id = null;
	
		foreach($segments as $key=>$value){
		
			$item = $value;
			
			if(!$element = $this->get_item_by_slug($value, $parent_element_id)){
			
				return false;
			
			}
			
			if($element->parent_element_id){
			
				$parent_element_id = $element->element_id;
				
			}
			
			$element->element_path = $this->get_element_path($element->element_id);
			
			$breadcrumbs[] = $element;
		
		}
		
		if($return_breadcrumbs and $breadcrumbs){
		
			#array_pop($breadcrumbs);
			
			return $breadcrumbs;
			
		}
		
		return $element;
	
	
	}
	# Get item #

	function get_item_by_slug($title_slug, $parent_element_id=false){
	
		if($parent_element_id){
			$this->db->where('parent_element_id', $parent_element_id);
		}
	
		$this->db->where('title_slug', $title_slug);

		$this->db->limit(1);
		
		$query = $this->db->get('elements');
		
		#echo $this->db->_error_message().$this->db->last_query(); # Debug assist
		
		if($query->num_rows()>0){

			$result = $query->row_object();

			return $result;


		}

	}	
	
	function get_item($element_id, $prevent_get_element_path=false){
	
		$query = $this->db->get_where('elements', array('element_id' => $element_id), 1);

		# echo $this->db->_error_message().$this->db->last_query(); # Debug assist
		
		if($query->num_rows()>0){

			$result = $query->row_object();

			if(!$prevent_get_element_path){
				$result->element_path = $this->get_element_path($result->element_id);
			}
			
			return $result;	

		}

	}

	function get_element_path($element_id){
	
		$element = $this->get_item($element_id, true);
		
		$path_array = $this->get_path_array($element);
		
		if(is_array($path_array)){
			
			return implode("/", array_reverse($path_array));
		
		}
		
		
	
	}
	
	function get_path_array($element, $path_array=false){
		
		if($element->parent_element_id){
			
			$path_array[] = $element->title_slug;
		
			$element = $this->get_item($element->parent_element_id);
			
			$path_array = $this->get_path_array($element, $path_array);
		
		
		}

		return $path_array;	
		
	
	}

}


/* End of file account.php */
/* Location: ./application/models/account.php */