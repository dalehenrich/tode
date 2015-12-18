examples
comparingWordsBetweenText
	"methods are similar if they send the same messages; large methods are top-left"
	^ RTSimilarityMatrix new
		on: #('hello world' 'welcome to our world' 'hello means bonjour' 'bye bye')
		by: [ :m1 : m2 |
			(m1 substrings intersection: m2 substrings) size
			/ ((1 max: (m1 substrings union: m2 substrings) size) + 1) "NB penalty for small methods"
			];
		gridView