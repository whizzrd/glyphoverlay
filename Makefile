
glyphoverlay.opml : glyphoverlay.html html2opml_dl.xsl
	xsltproc -o glyphoverlay.opml html2opml_dl.xsl glyphoverlay.html