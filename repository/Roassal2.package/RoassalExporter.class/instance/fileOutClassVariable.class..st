export
fileOutClassVariable: aSymbol class: aClass
	stream cr; cr.
	
	self tag: 'shared-variable' do: [
		self tag: 'name' with: aSymbol.
		self tag: 'environment' with: (self fullyQualifiedClassNameFor: aClass).
		self tag: 'private' with: 'false'.
		self tag: 'constant' with: 'false'.
		self tag: 'category' with: 'class variables'.
		self tag: 'initializer' with: 'nil'.
		self tag: 'attributes' do: [
			self tag: 'package' with: (self packageNameForClass: aClass).
		]
	]