sources
exampleSelectionChange

| int v |
v := #exampleClassAnalysis2 rtValue: (RTComposerExample new).
int := RTSelectableView new.

int when: RTSelectionChange do: [ :evt | 
	int getOrCreateShapeForView trachelShape color: (int group size < 10 ifTrue: [Color green alpha: 0.3 ] ifFalse: [ Color red alpha: 0.3 ]) ].

v @ int.
^ v

