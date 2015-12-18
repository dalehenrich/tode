sources
example2015

| b toBeRed |
toBeRed := #(21 2 3 24 44 63 82 81 83 84 26 46 66 7 8 29 49 69 88 87 51 32 13 33 53 73 93 18 17 16 36 56 57 58 78 98 97 96 ).

b := RTMondrian new.
b shape circle size: 15;
	color: (Color veryLightGray alpha: 0.4);
	if: [ :value | toBeRed includes: value ] fillColor: Color red.

b nodes: (1 to: 100).
b edges
	moveBehind;
	connectToAll: [ :v | 
		v \\ 20 ~~ 0 
			ifTrue: [ Array with: v + 1 with: v + 20 ]
			ifFalse: [ Array with: v + 20 ]
		 ].
b layout gridWithPerRow: 20.
b  build.
^ b