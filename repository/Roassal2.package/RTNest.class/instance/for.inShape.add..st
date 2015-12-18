public
for: collectionOfElements inShape: aSymbol add: aTwoArgBlock
	"aTwoArgBlock follows [ :group :model | ... ]"
	"This methods assumes that each shape of collection of Elements is a multi composed shape"
	
	collectionOfElements do: [ :element |
		| g |
		g := RTGroup new.
		aTwoArgBlock value: g value: element model.
		self on: element inShape: aSymbol nest: g.
		element view addAll: g.
	]