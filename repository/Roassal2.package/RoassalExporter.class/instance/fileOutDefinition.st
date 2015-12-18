export
fileOutDefinition
	
	[
	stream := FileStream forceNewFileNamed: dirpath, namespace, '.st'.
	stream nextPutAll: '<?xml version="1.0"?>';cr;cr.
	self tag:'st-source' do: [ 
		self fileOutTimeStamp.
		self fileOutNameSpace.
		 ].
	] 
	ensure: [ stream close ]