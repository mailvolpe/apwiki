<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {


	function __construct(){

		// Call the Model constructor

		parent::__construct();

		$this->api = false;
		/* Security by admin level goes here. */
		
		$this->load->model("Element");
		
		if(strstr(base_url(), 'api')){
			header('Access-Control-Allow-Origin: *'); 
			$this->api = true;
		}
		
		
		
	}
	
	
	
	public function index(){
	
		$start_node = false; 
		
		$segments = $this->uri->segment_array();
		
		if($segments){
		
			$start_node = $this->Element->get_item_by_uri($segments);			
			
		}		

		if(!$start_node){
		
			$start_node = $this->Element->main_node;
		
		}

		$data['start_node'] = $start_node;
		
		if($this->input->post('title') AND $this->input->post('short_desc')){
			
			if($created = $this->Element->create($start_node->element_id)){
				
				//$element = $this->Element->get_item($created);
				
				$this->load->vars(array("message_class"=>"success", "message"=>'Item adicionado'));
				
			}else{
			
				$this->load->vars(array("message_class"=>"warning", "message"=>'Não foi possível adicionar o item.'));
				
			}
			
		}elseif($this->input->get('remove')=='true'){

			if($removed = $this->Element->remove($start_node)){
								
				set_flash_message('Item removido', 'success');
				
				$parent = $this->Element->get_item($start_node->parent_element_id);
				
				redirect($parent->element_path);
				
			}else{
			
				$this->load->vars(array("message_class"=>"warning", "message"=>'Não foi possível remover o item.'));
				
			}		
		
		}elseif($this->input->get('flag')=='true' OR $this->input->get('flag')=='unflag'){

			$sign="1";
		
			if($this->input->get('flag')=='unflag'){
			
				$sign = "0";
				
			}
		
			$flaged = $this->Element->flag($start_node, $sign);
		
			if($flaged){
				
				$this->load->vars(array("message_class"=>"success", "message"=>'Item sinalizado como impróprio.'));
				
				if($sign=="0"){
				
					$this->load->vars(array("message_class"=>"success", "message"=>'Marcação removida.'));
					
				}
				
				
				
			}else{
			
				$this->load->vars(array("message_class"=>"warning", "message"=>'Não foi possível sinalizar o item.'));
				
			}		
		
		}
		
		if($start_node->parent_element_id){
		
			$data['parent_node'] = $this->Element->get_item($start_node->parent_element_id);

		}

		$data['breadcrumbs'] = $this->Element->get_breadcrumbs($segments);
		
		$data['itens'] = $this->Element->index($start_node->element_id);
	

		if(!$this->api){
		
			$this->load->vars(array("page" => "pages/home"));

			$this->load->view('template/template', $data);		
		
		}else{
		
			$json_string = json_encode($data);
			
			$this->output->set_content_type('application/json');
			
			echo $json_string;			
		
		}
		
	}





}

/* End of file accounts.php */
/* Location: ./application/controllers/accounts.php */