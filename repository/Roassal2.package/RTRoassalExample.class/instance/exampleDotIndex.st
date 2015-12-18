sources
exampleDotIndex

| v values resolutionVertical groups maxValue g c el |

values := #(15 8 2 5 11).

resolutionVertical := 10.
v := RTView new.

maxValue := values max.
groups := RTGroup new.

values do: [ :aValue |
	g := RTGroup new.
	resolutionVertical to: 1 by: -1 do: [ :y | 
		c := (aValue / maxValue >= (y / resolutionVertical)) ifTrue: [ Color orange ] ifFalse: [ Color gray ].
		el := (RTEllipse new size: 20; color: c) element.
		g add: el.
		v add: el
	].
	RTVerticalLineLayout on: g.
	g last  @ (RTLabelled new 
					below; 
					text: aValue;
					color: Color orange).
	groups add: g. 
].

RTHorizontalLineLayout on: groups.
groups do: [ :aGroup | v addAll: aGroup ].

v canvas color: Color black.

	^ v