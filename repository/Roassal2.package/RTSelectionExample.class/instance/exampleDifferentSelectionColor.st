sources
exampleDifferentSelectionColor

| int v |
v := #exampleClassAnalysis2 rtValue: (RTComposerExample new).
int := RTSelectableView new.
int color: [ :e | e color = Color red ifTrue: [Color green] ifFalse: [ Color red ] ].

v @ int.
^v

