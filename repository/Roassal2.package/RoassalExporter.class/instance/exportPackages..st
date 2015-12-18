export
exportPackages: pkgs
	packages := pkgs.
	"self fileOutDefinition."
	"pkgs do: [ :p | self exportPackage: p ]."
	
	[ 
	stream := FileStream forceNewFileNamed: dirpath, self environment, '.st'.
	stream nextPutAll: '<?xml version="1.0"?>';cr;cr.
	self tag: 'st-source' do: [ 
		self fileOutTimeStamp.
		self fileOutNameSpace.
		self fileOutClassDefinitions.
		self fileOutMethods.
		self fileOutInitializers. ].
	stream close.
	 ] ensure: [ stream close ].