export
fileOutClassDefinition: aClass
	stream cr.
	
	self tag: 'class' do: [
		self tag: 'name' with: aClass name.
		self tag: 'environment' with: self environment.
		self tag: 'super' with: (self fullyQualifiedClassNameFor: aClass superclass).
		self tag: 'private' with: 'false'.
		self tag: 'indexed-type' with: (self mapType: aClass typeOfClass).
		self tag: 'inst-vars' with: aClass instanceVariablesString.
		self tag: 'class-inst-vars' with: aClass class instanceVariablesString.
		self tag: 'imports' with: ''.
		self tag: 'category' with: aClass category.
		self tag: 'attributes' do: [
			self tag: 'package' with: (self packageNameForClass: aClass).
		]
	].

	aClass classPool keys do: [:ea | self fileOutClassVariable: ea class: aClass].
	
	self fileOutClassCommentForClass: aClass