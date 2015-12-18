export
fileOutInitializerForClass: aClass
	"self tag: 'initialize' do: [
		self tag: 'class-id' with: (self fullyQualifiedClassNameFor: aClass)
	]"