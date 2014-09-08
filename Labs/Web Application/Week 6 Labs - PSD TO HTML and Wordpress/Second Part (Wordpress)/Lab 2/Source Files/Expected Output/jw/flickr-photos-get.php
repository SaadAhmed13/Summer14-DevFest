<?php

$xml = file_get_contents('http://api.flickr.com/services/feeds/photos_public.gne?id=64699055@N00&lang=en-us&format=rss_200');
$x = new SimpleXmlElement($xml);


$new_xml_file = new SimpleXmlElement('<images></images>');		

$i = 0;
foreach($x->channel->item as $entry) {
	if($i = 10) break;
   preg_match('/<img src=".+\/>/', $entry->description, $matches);
   $new_xml_file->addChild('image', $matches[0] . "\n");
   $i++;
}

$new_xml_file->asXML('/psd-wp/wp-content/themes/jw/flickr.xml');
		
?>