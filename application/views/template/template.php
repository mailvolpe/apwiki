<!DOCTYPE html>
<html lang="pt-br">

	<?php $this->load->view('template/head'); ?>
	
    <body>
			
		<?php $this->load->view('template/navbar'); ?>

		
	<div class="container">
	
		<div class="row padded-block">
			
			<div class="col-md-8">
			
				<div class="row">
			
					<? $this->load->view($page); ?>
		
				</div>
		
			</div>
			
			<div class="col-md-4 no-overflow">
			
				<div class="padded-row">
				
					<h2>Opções</h2>

					<h5 class="">
						<a target="_blank" href="<?=$this->config->item('api_base_url')?><?=$start_node->element_path?>">
							Consultar <?=$start_node->title?> pela API 
						</a>
					</h5>

					<h5 class="">
						<a target="_blank" href="<?=$this->config->item('api_base_url')?><?=$start_node->element_path?>?clean=true">
							Consultar <?=$start_node->title?> pela API sem exibir os sinalizados como impróprios.
						</a>
					</h5>
					
					<h5 class="">
						<a target="_blank" href="http://google.com/#q=<?=urlencode($start_node->title)?>">
							Procurar "<?=$start_node->title?>" no Google
						</a>
					</h5>
						
					<?if($start_node->abuse_report==0){?>						
					
						<h5 class="">
							<a href="javascript:void(0);" onclick="if(confirm('Confirma?')){window.location='<?=$start_node->element_path?>?flag=true';}">
								Sinalizar como impróprio
							</a>
						</h5>										
					
					<?}?>
					
					<?if($start_node->abuse_report==1){?>
					
						<h5 class="">
							<a href="<?=$start_node->element_path?>?flag=unflag">
								Remover sinalização
							</a>
						</h5>
						
					<?}?>
					
					<h5 class="">
						<a href="javascript:void(0);" onclick="if(confirm('Confirma?')){window.location='<?=$start_node->element_path?>?remove=true';}">
							Remover <?=$start_node->title?>
						</a>
					</h5>				
				
				</div>
				
				
			</div>
			
		</div>
			

	</div>
	
	<div class="container footer">
	
		<a href="<?=base_url()?>"><?=$main_node->title;?></a>
		
		<span class="pull-right">Desenvolvido por <a target="_blank" href="https://facebook.com/mailvolpe">Léo Volpe</a></span>
		
	</div>
	
	
    </body>
	
</html>