as yet unclassified
run
	"
	RTScatterplotMap new run
	"
	| tab allLonLat v shape es |
	tab := RTTabTable new input: 'http://www.gaslampmedia.com/wp-content/uploads/2013/08/zip_codes_states.csv' asZnUrl retrieveContents usingDelimiter: $,.
	tab removeFirstRow.
	tab convertColumns: #(2 3) to: [ :s | | str |
		str := s.
		(str = '') ifTrue: [ str := '0' ]. 
		(str beginsWith: '"+' ) ifTrue: [ str := str allButFirst allButFirst allButLast ].
		(str first = $") ifTrue: [ Float readFrom: str allButFirst allButLast ] ifFalse: [  Float readFrom: str ] ].
	allLonLat := tab values collect: [ :row | (row at: 2) @ (row at: 3) ].
	
	v := RTView new.
	v @ RTDraggableView.
	shape := (RTEllipse new size: 2; color: (Color blue alpha: 0.01)).
	es := shape elementsOn: allLonLat.
	es @ RTPopup.
	v addAll: es.
	es do: [ :el | 
		| p |
		p := RTScatterplotMap new convert: el model x with: el model y.
		el translateTo: (p x * 300) @ (p y negated * 300).
	].
	v canvas camera focusOnCenter.
	^ v