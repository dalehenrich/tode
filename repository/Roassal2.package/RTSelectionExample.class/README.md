RTSelectionExample new installTitle: 'DifferentSelectionColor' 
		code:
'
| int v |
v := #exampleClassAnalysis2 rtValue: (RTComposerExample new).
int := RTSelectableView new.
int shapeBuilder color: (Color black alpha: 0.4).
int color: [ :e | e color = Color red ifTrue: [Color green] ifFalse: [ Color red ] ].

v @ int.
^v

'
	