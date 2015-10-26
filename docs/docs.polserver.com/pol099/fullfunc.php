<?php
	date_default_timezone_set(@date_default_timezone_get());
  include_once( "include/global.inc" );
  if (!$offline) {
    $g_Page = "poldoc";
    if( isset($header) && $header )
      include_once $header;
  }
  /* add the header */
  if ($offline) {
    siteheader('POL Scripting Reference');
  }

	// PHP-BB global stuff
	global $request;
	if( isset($request) )
		$request->enable_super_globals();
	//

  $xmlfile = $_GET['xmlfile'];
  
  $xsltproc = new XsltProcessor();
  $xsl = new DomDocument;
  $xsl->load('escript.xslt');
  $xsltproc->importStylesheet($xsl);
  $xml_doc = new DomDocument;
  $xml_doc->load($xmlfile.'.xml');
  $xsltproc->setParameter('', 'offline', $offline);
  $xsltproc->setParameter('', 'xmlfile', $xmlfile);
  
  if ($html = $xsltproc->transformToXML($xml_doc)) {
     echo $html;
  } 
  
  if (!$offline) {
    echo ('
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
    </script>
    <script type="text/javascript">
    _uacct = "UA-2869696-3";
    urchinTracker();
    </script>');
  }
  /* add the footer */
  sitefooter($offline);
?>