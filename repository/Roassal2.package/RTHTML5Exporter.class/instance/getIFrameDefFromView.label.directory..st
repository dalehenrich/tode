Pillar utility
getIFrameDefFromView: aView label: aLabelAsString directory: aDirectory
	"This method is useful when invoked from within Pillar"
	
	| htmlFileName writeStream |
	htmlFileName := (aDirectory / aLabelAsString, 'html') pathString.
	writeStream := htmlFileName asFileReference writeStream.
	RTHTML5Exporter new directory: aDirectory; export: aView toStream: writeStream.
	^ '<iframe src="', htmlFileName, '" 
		name="', aLabelAsString, '" 
		style="border:none" 
		width="', (aView canvas encompassingRectangle width * (aView canvas camera scale + self marginScale )) printString,'" 
		height="', (aView canvas encompassingRectangle height * (aView canvas camera scale + self marginScale )) printString,'"></iframe>' 