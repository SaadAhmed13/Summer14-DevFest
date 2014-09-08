<ul id="sidebar">

	<?php

		if(!function_exists('dynamic_sidebar')
		|| !dynamic_sidebar()) :

	?>
		<p> You're not using a dynamic sidebar, silly! </p>
		
	<?php endif; ?>	
	
	<li class="widget secondaryBox">
		<h3>Flickr</h3>
		
	    <div id="controller" class="hidden" style="display: none;">
	        <span class="jFlowControl">No 1</span>
	        <span class="jFlowControl">No 2</span>
	        <span class="jFlowControl">No 3</span>
	    </div>		

		<?php
		$dir = 'http://www.jeff-way.com/psd-wp/wp-content/themes/jw/flickr.xml';
		$xml = new SimpleXMLElement($dir, 0, true);
		echo '<div id="slides">';

		foreach($xml as $x) {
			echo $x;
		}
		echo '</div>';
		?>
		
		<div class="prevNext">
			<a href="#"><img src="<?php echo bloginfo('template_directory') . '/img/left-arrow.png';?>" alt="Previous" class="jFlowPrev" /></a>
			<a href="#"><img src="<?php echo bloginfo('template_directory') . '/img/right-arrow.png';?>" alt="Next" class="jFlowNext" /></a>	
		</div>

	</li>
	
	<li>
		<a href="http://www.twitter.com/nettuts"><img src="<?php echo bloginfo('template_directory') . '/img/twitter-follow.png';?>" alt="Follow Me On Twitter" /></a>	
	</li>

</ul> <!-- end sidebar-->