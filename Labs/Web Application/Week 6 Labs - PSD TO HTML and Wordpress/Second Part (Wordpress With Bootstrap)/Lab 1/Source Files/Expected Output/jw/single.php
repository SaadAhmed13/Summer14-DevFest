<?php get_header(); ?>
<div id="main">
	
	<div id="primary">    			
			<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
			<div class="post-item">
				<img src="<?php $thumb = get_post_custom_values('post-image'); echo bloginfo('url') . '/' . $thumb[0]; ?>" alt="<?php the_title(); ?>" />
				<h2> <a href="<?php the_permalink() ?>"> <?php the_title(); ?> </a></h2>
				<p class="meta"> posted by <?php the_author();?> on <?php the_date(); ?>. </p>				
				<?php the_content('read more...'); ?>

			</div> <!-- end post-item-->

			<?php endwhile; endif; ?>
			
		<div id="comments_template"> 
			<?php comments_template(); ?> 
		</div> 
			
	</div><!-- end primary-->
	
	<?php get_sidebar(); ?>
			
</div><!-- end main-->

<?php get_footer(); ?>