examples
comparingMethodSourceCode
	"Compare the source code of all the subclasses of ROShape"
	"Black dot means the two classes are identical"
	"White dot means the two classes are very different"
	^ RTSimilarityMatrix new
		on: RTShape withAllSubclasses
		by: [ :class1 :class2 |
			| sourceCode1 sourceCode2 s |
			"We get the source code of class1"
			s := WriteStream on: String new.
			class1 fileOutOn: s moveSource: false toFile: 0.
			sourceCode1 := s contents.
			
			"We get the source code of class2"
			s := WriteStream on: String new.
			class2 fileOutOn: s moveSource: false toFile: 0.
			sourceCode2 := s contents.
			
			(sourceCode1 lines intersection: sourceCode2 lines) size
			/ ((1 max: (sourceCode1 lines union: sourceCode2 lines) size) + 1) "NB penalty for small methods"
			];
		gridView