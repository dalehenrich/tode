private
computePath
	self shapesDo: [ :s | s computePath ]