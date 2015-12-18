adding
addCurves: stream
	| rPoints |
	rPoints := self points allButFirst.
	rPoints size >= 3
		ifTrue: [
			stream
				nextPut: $S.
			(1 to: rPoints size - 1) do: [ :i | |p1 p2|
					p1 := (rPoints at: i).
					p2 := ((rPoints at: i) + (rPoints at: i + 1) / 2 ).
					stream
						nextPutAll: ('<1p>,<2p> ' expandMacrosWith: p1 x rounded with: p1 y rounded);
						nextPutAll: ('<1p>,<2p> ' expandMacrosWith: p2 x rounded with: p2 y rounded) 		
				].
			stream
				nextPutAll: ('L<1p>,<2p>" ' expandMacrosWith: rPoints last x rounded with: rPoints last y rounded).
			]
		ifFalse: [		
			rPoints size == 2
				ifTrue: [  
					stream
						nextPutAll: ('Q<1p>,<2p> ' expandMacrosWith: rPoints first x rounded with: rPoints first y rounded);
						nextPutAll: ('<1p>,<2p>" ' expandMacrosWith: rPoints second x rounded with: rPoints second y rounded) 
					] .			
			rPoints size == 3
				ifTrue: [  
					stream
						nextPutAll: ('C<1p>,<2p> ' expandMacrosWith: rPoints first x rounded with: rPoints first y rounded);
						nextPutAll: ('<1p>,<2p> ' expandMacrosWith: rPoints second x rounded with: rPoints second y rounded);
						nextPutAll: ('<1p>,<2p>" ' expandMacrosWith: rPoints last x rounded with: rPoints last y rounded) 
					] ]