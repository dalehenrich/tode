public
showDayNames
	self dayLabelShape label text: [ :index | 
		| name |
		name := Week nameOfDay: index.
		name first asString, name second asString ].