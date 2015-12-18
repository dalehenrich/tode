private
cl: layer u: u v: v
	"Calculates cuv. Di Battista, chapter 9.2.2, page 283"
	
	| partnersOfU partnersOfV c partnersOfUIndex partnersOfVIndex layerNr |
	layerNr := layerNrs at: u.	":= layerNrs at: v"
	partnersOfU := (connections at: u)
		select: [:each | (layerNrs at: each) = (layerNr - 1)].
	partnersOfV := (connections at: v)
		select: [:each | (layerNrs at: each) = (layerNr - 1)].
	c := 0.
	partnersOfUIndex := partnersOfU collect: [:node | layer indexOf: node].
	partnersOfVIndex := partnersOfV collect: [:node | layer indexOf: node].
	partnersOfUIndex
		do:
			[:uIndex | partnersOfVIndex do: [:vIndex | vIndex < uIndex ifTrue: [c := c + 1]]].
	^c