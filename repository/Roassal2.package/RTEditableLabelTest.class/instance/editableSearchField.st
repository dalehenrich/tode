examples
editableSearchField
	"
	self new editableSearchField.
	"
	| b lbl searchField |
b := RTMondrian new.

b nodes: Collection withAllSubclasses.
b edges connectFrom: #superclass.
b layout tree.
lbl := RTEditableLabel new text: 'Enter a pattern'.
searchField := lbl element.
searchField setAsFixed.

lbl editLabelShape: false;
	updateMorphExtent: false.
lbl onKeystroke: [ :text | 
	(b view elements select: [ :es | ('*', text, '*') match: es name ]) do: [ :e | RTBlink on: e ]].
lbl onPressingEnter: [ :text| lbl hideTextMorphFor: searchField ].

b view add: searchField.
RTHorizontalLineLayout on: (Array with: searchField). 

b