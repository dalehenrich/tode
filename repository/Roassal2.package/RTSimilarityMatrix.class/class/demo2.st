as yet unclassified
demo2
	"show which Collection subclasses have a similar number of methods"
	^ RTSimilarityMatrix new
		on: (Collection allSubclasses
			sort: [:a :b | a methods size < b methods size])
		by: [ :classA : classB | |a b|
			a := classA methods size.
			b := classB methods size.
			((a min: b) / ((b max: a) max: 1)) asFloat ]
		withAction: [:classA :classB |
			TRPlatform current browseClass: classA.
			TRPlatform current browseClass: classB. ] ;
		viewMatrix