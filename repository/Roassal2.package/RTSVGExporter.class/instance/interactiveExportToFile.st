exporting
interactiveExportToFile

	| fileStream fileRef |
	
	fileRef := TRPlatform current 
		dialogRequestSaveFilename: 'Export as SVG'
		extensions: #('svg')
		path: nil.
		
	fileRef ifNil: [ self inform: 'Saving cancelled'. ^ self ].
	
	fileStream := fileRef writeStream.
	[ self exportOnStream: fileStream ] 
		ensure: [ fileStream notNil ifTrue: [ fileStream close ] ]