<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>
		<?=$start_node->title;?>
	</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<meta name="description" content="<?=$start_node->short_desc;?>">
	<meta name="keywords" content="<?=str_replace(" ", ", ", mb_strtolower($start_node->title));?>">
	
	<meta name="author" content="">

	<base href="<?=$this->config->item('base_url');?>">
	
	<!-- CSS BS 3.0. --><script src="assets/third_party/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript --><script src="assets/third_party/bootstrap.min.js"></script>
	
	<?
		$themes = array(
			'cerulean',
			'cosmo',
			'cyborg',
			'darkly',
			'flatly',
			'journal',
			'lumen',
			'paper',
			'readable',
			'sandstone',
			'simplex',
			'slate',
			'spacelab',
			'superhero',
			'united',
			'yeti'
		);


	?>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/<?=$themes[rand(0,(count($themes)-1))]?>/bootstrap.min.css">
	

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">	

	<link href="assets/css/styles.css" rel="stylesheet">

	<!-- Fav and touch icons -->
	<!--<link rel="shortcut icon" href="">-->
	
</head>
