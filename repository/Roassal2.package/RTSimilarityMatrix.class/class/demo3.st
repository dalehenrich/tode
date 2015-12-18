as yet unclassified
demo3
	"methods are similar if they send the same messages; large methods are top-left"
	^ RTSimilarityMatrix new
		on: ((Set allSubclasses flatCollect: #methods)
					sort: [ :m1 :m2 | m1 size > m2 size ])
		by: [ :m1 : m2 |
			(m1 messages intersection: m2 messages) size
			/ ((1 max: (m1 messages union: m2 messages) size) + 1) "NB penalty for small methods"
			]
		withAction: [:m1 : m2 |
			m1 browse.
			m2 browse.
			];
		viewMatrix