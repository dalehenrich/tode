export
fileOutClassCommentForClass: aClass
	
	aClass hasComment ifFalse: [^self].
	stream cr.
	self tag: 'comment' do: [
		self tag: 'class-id' with: (self fullyQualifiedClassNameFor: aClass).
		self tag: 'body' with:  (((aClass comment asString copyReplaceAll: '&' with: '&amp;') copyReplaceAll: '<' with:  '&lt;' ) copyReplaceAll:  '>' with:  '&gt;').
	]