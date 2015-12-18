public
connectTo: aBlock
	"aBlock accepts an object and returns a list of objects"
	"aBlock return an object or a list of objects to highlight"
	connectToElements := [ :el | 
		| objects |
		objects := aBlock rtValue: el model.
		(objects collect: [ :o | el view elementFromModel: o ]) copyWithout: nil
		]