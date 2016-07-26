<? $this->load->view('template/messages'); ?>

<?php if(isset($breadcrumbs) AND count($breadcrumbs)>1){?>
	<ol class="breadcrumb">
	<?php foreach($breadcrumbs as $breadcrumb){ ?>
	
		<?$element_path = $this->Element->get_element_path($breadcrumb->element_id);?>
		
		<li class="<?=($element_path==$this->uri->uri_string())?'active':false;?>">
			<?if($element_path==$this->uri->uri_string()){?>
				<?=$breadcrumb->title?>
			<?}else{?>
				<a href="<?=base_url()?><?=$element_path?>"><?=$breadcrumb->title?></a >
			<?}?>
		</li>

	<?php }?>
	</ol>
<?php }?>


<div class="no-overflow">
	<h1 class="start-node-title"><?=$start_node->title?></h1>
	<?if($start_node->abuse_report==1){?><span class="label label-warning">Sinalizado como impróprio</span><?}?>
	<h3 class=""><?=$start_node->short_desc?></h3>
	<p class=""><?=$start_node->long_desc?></p>
</div>

<div class="row">

	<? $col_1_ct = $col_2_ct = $col_3_ct = $col_4_ct = null; ?>
	
	<?php if(is_array($itens)){ ?>
		<?php foreach($itens as $item){ ?>

		<?		
			if(!isset($col) or $col>4){$col=1;} 
			$varname = 'col_'.$col.'_ct';
			$$varname .= $this->load->view("elements/card", $item, true);
			$col++;
		?>

		<?php } ?>
	<?php } ?>
	
	<div class="col-md-3"><?=$col_1_ct?></div>
	<div class="col-md-3"><?=$col_2_ct?></div>
	<div class="col-md-3"><?=$col_3_ct?></div>
	<div class="col-md-3"><?=$col_4_ct?></div>
	
</div>

<h4 class="">
	<i class="fa fa-plus-circle"></i>
	<a target="_blank" href="javascript:void(0);" onclick="$('.add_item_form').toggle(100); $('.focus-me').focus();">
		 Adicionar item
	</a>
</h4>

<div class="add_item_form">
	<div class="row padded-row">
		<div class="col-sm-12">
			<form action="" method="post" class="form-horizontal">	

				<div class="form-group">
					<label for="inputTitle" class="control-label">Título</label>
					<input name="title" class="form-control focus-me" id="inputTitle" value="" placeholder="Até 64 caracteres" maxlength="64">
				</div>

				<div class="form-group">
					<label for="inputShortDesc" class="control-label">Descriçao curta</label>
					<input name="short_desc" class="form-control" id="inputShortDesc" value="" placeholder="Até 160 caracteres" maxlength="160">
				</div>

				<div class="form-group">
					<label for="inputLongDesc" class="control-label">Descriçao longa</label>
					<textarea name="long_desc" class="form-control" id="inputLongDesc" value="" placeholder="Até 520 caracteres" maxlength="520" rows="5"></textarea>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-default btn-block">Inserir</button>
				</div>
				
			</form>
		</div>
	</div>
</div>


<?if(isset($parent_node)){?>
	
	<hr>	
	
	<h4 class="">
		<a href="<?=base_url()?><?=$this->Element->get_element_path($parent_node->element_id)?>">Voltar para <?=$parent_node->title?></a>
	</h4>
	
	<div class="row">
	
	<? $col = $col_1_ct = $col_2_ct = $col_3_ct = $col_4_ct = null; ?>
	
	<?foreach($this->Element->index($parent_node->element_id) as $child){?>
	
			<?		
			if(!isset($col) or $col>3){$col=1;} 
			$varname = 'col_'.$col.'_ct';
			$$varname .= $this->load->view("elements/link", $child, true);
			$col++;
			?>
			
	<?}?>
		
		<div class="col-md-4"><ul class="list-unstyled"><?=$col_1_ct?></ul></div>
		<div class="col-md-4"><ul class="list-unstyled"><?=$col_2_ct?></ul></div>
		<div class="col-md-4"><ul class="list-unstyled"><?=$col_3_ct?></ul></div>
	
	</div>
	
<?}?>


