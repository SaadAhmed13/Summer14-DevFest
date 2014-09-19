<?php get_header(); ?>
<div id="main">
	
	<div id="primary">    		
		<div id="page_content">	
			<h3>Search Results</h3>
			<ul>
			<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
				<li> <a href="<?php the_permalink() ?>"> <?php the_title(); ?> </a></li>
			<?php endwhile; ?>
			</ul>
		</div> <!-- end page_content-->
				<div id="morePrev">
					<?php next_posts_link('More...'); ?>
					<?php previous_posts_link('Return...'); ?>
				</div>
				
			<?php else : ?>
				</p>I'm not sure what you're looking for. 
			<?php endif; ?>
		

		
	</div><!-- end primary-->
	
	<?php get_sidebar(); ?>
			
</div><!-- end main-->

<?php get_footer(); ?>