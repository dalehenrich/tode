export
fileOutMethod: aMethodReference
	self tag: 'methods' do: [
		self tag: 'class-id' with: (self fullyQualifiedClassNameFor: aMethodReference realClass).
		self tag: 'category' with: (self categoryForMethod: aMethodReference).
		self fileOutMethodBody: aMethodReference.
	]