export
fileOutNameSpace

	self tag: 'name-space' do: [
		self tag: 'name' with: self environment.
		self tag: 'environment' with: 'Smalltalk'.
		self tag: 'private' with: 'false'.
		self tag: 'imports' do: [
			stream nextPutAll: self nameSpaceImports; cr.
		].
		self tag: 'category' with: self environment.
		self tag: 'attributes' do: [
			self tag: 'package' with: self environment.
		].
	]