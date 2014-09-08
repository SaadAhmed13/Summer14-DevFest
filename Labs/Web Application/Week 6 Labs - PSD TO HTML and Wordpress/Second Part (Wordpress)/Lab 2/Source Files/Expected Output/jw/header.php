<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head>
    <meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />
    <meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><?php bloginfo('name'); ?> <?php wp_title(); ?></title>
    <link rel="pingback" href="<?php bloginfo('pingback url'); ?>" /> 
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" /> 
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
    <link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/img/favicon.ico" /> 
	
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('template_directory'); ?>/css/ie.css" />
	<![endif]-->
    
    <?php wp_head(); ?>
  </head>

  <?php echo is_single() ? "<body class='single'>" : "<body>"; ?>

    <div id="wrap">
    	<div id="header">
    		<h1><a href="<?php bloginfo('url');?>">JW</a></h1>
    		<ul>
    			<li id="home"><a href="<?php bloginfo('url'); ?>">home</a></li>
    			<?php wp_list_pages('title_li=&include=2,15'); ?>
       	  	</ul>
       	  	
       	  	<div id="search">
       	  		<img src="<?php echo bloginfo('template_directory') . '/img/searchIcon.png'; ?>" alt="Search for Something" id="searchIcon" />
       	  		<?php include TEMPLATEPATH . '/searchform.php'; ?>
	
				<a href="<?php bloginfo('rss2_url'); ?>">
					<img src="<?php echo bloginfo('template_directory') . '/img/rss.png';?>" alt="Subscribe to the RSS Feed" />
				</a>
				
			</div> <!-- end search-->
			
			
			<p id="slogan"><?php bloginfo('description');?></p>
    
      	</div> <!-- end header--> 