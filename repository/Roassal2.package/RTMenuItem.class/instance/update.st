public
update
	| width pos ext|
	width := self menuBackground width.
	ext := self rawmenu encompassingRectangle extent.
	pos := self menuBackground position + (( (ext x - width)/2 )@0).
	
	self menuBackground extent: ext.
	self menuBackground translateTo: pos.
	self rawmenu translateTo: pos.