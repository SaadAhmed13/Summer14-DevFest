<?php get_header(); ?>
<div id="main">
	<div id="primary">  
		<div id="page_content">  			
			<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
			
				<h2> <a href="<?php the_permalink() ?>"> <?php the_title(); ?> </a></h2>
				<?php the_content('read more...'); ?>
			
			<?php endwhile; ?>
			
			<?php else : ?>
				</p>I'm not sure what you're looking for. 
			<?php endif; ?>
		</div><!-- end page-content-->

		
	</div><!-- end primary-->
	
	<?php get_sidebar(); ?>
			
</div><!-- end main-->

<?php get_footer(); ?>