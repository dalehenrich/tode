initialization
getIFrameDefFromView: aView label: aLabelAsString directory: aDirectory
	"This method is useful when invoked from within Pillar"
	
	| pngFileName writeStream |
	pngFileName := (aDirectory / aLabelAsString, 'png') pathString.
	writeStream := pngFileName asFileReference writeStream.
	RTPNGExporter new builder: aView; fileName: pngFileName; exportToFile.
	^ '<img src="', pngFileName, '" 
		name="', aLabelAsString, '" ></img>' 