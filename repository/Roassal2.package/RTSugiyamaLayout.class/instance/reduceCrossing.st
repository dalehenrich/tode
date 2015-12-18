private
reduceCrossing
	"Crossing reduction"
	
	| layer2 u v c1 c2 layer1 done |
	2
		to: layers keys size
		do:
			[:index | 
			layer1 := layers at: index - 1.
			layer2 := layers at: index.
			done := false.
			[done]
				whileFalse:
					[done := true.
					2
						to: layer2 size
						do:
							[:i | 
							u := layer2 at: i - 1.
							v := layer2 at: i.
							c1 := self cl: layer1 u: u v: v.
							c2 := self cl: layer1 u: v v: u.
							c1 > c2
								ifTrue:
									[layer2 rtSwapElement: u withElement: v.
									done := false]]]]