public
palette

	^ palette ifNil: [ 
			self initializePalette.
			palette.
		 ]