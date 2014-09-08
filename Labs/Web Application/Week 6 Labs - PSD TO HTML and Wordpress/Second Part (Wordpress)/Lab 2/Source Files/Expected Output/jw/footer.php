<div id="footer">
	<?php wp_footer(); ?>

</div><!-- end footer-->

</div><!-- end wrap-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<script type="text/javascript" src="http://www.jeff-way.com/psd-wp/wp-content/themes/jw/js/jquery.flow.1.1.min.js"></script>	
		
<script type="text/javascript">
        $("div#controller").jFlow({
            slides: "#slides",
            width: "100%",
            height: "180px"
        });
    
    $('.prevNext a').click(function() {
    	return false;
    });
    
    $('#comments_template li:first-child').click(function() {
    	alert('yay');
    });

</script>
	
</body>
</html>