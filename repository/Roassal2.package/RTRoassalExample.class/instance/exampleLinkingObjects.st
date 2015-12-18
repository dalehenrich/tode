sources
exampleLinkingObjects
| associations v labels |

associations := OrderedCollection new.
associations
	add: 'bonjour' -> 'hello';
	add: 'homme' -> 'man' ;
	add: 'femme' -> 'women' ;
	add: 'hello' -> 'goodbye' ;
	add: 'people' -> 'homme' ;
	add: 'people' -> 'women'.

"We create the nodes"
v := RTView new.
v @ RTDraggableView.
labels := Set new.
associations do: [ :assoc |
	labels add: assoc key; add: assoc value ].
labels do: [ :aLabel |
	| n |
	n := v elementFromModel: aLabel.
	n ifNil: [ n := (RTBox new + RTLabel) elementOn: aLabel. n @ RTDraggable ].
	v add: n.
].

"We add the links"
RTEdge buildEdgesFromObjects: associations from: #key to: #value using: (RTLine new color: (Color blue alpha: 0.4)) inView: v.
	

"We do a layout"
RTForceBasedLayout new 
	charge: -500;
	on: v elements.

	^ v