<div class="panel panel-default no-overflow">
	<div class="panel-heading">
	<h4><a class="" href="<?=base_url()?><?=$this->Element->get_element_path($element_id)?>"><?=$title?></a></h4>
	<?if($abuse_report==1){?><span class="label label-warning"><i class="fa fa-warning"></i> Sinalizado</span><?}?>
	</div>
	<div class="panel-body">
		
		<?=$short_desc?>
		
	</div>  
</div>