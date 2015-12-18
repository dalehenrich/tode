nesting
nesting4
	"
	self new nesting4
	"
	| v es |
	v := RTView new.
	v @ RTDraggableView.

	es := RTBox new elementsOn: RTShape withAllSubclasses.
	v addAll: es.

	es @ RTPopup.

	RTNest new
		view: v;
		for: es add: [ :group :model |
			group addAll: ((RTBox new color: (Color blue alpha: 0.2)) elementsOn: model methods).
			
			RTNest new 
				view: v;
				for: group add: [ :g2 :m2 | g2 addAll: ((RTBox new color: Color yellow) elementsOn: #(1 2 3)).
				RTHorizontalLineLayout on: g2. ].
				 
			RTHorizontalFlowLayout on: group ].

	RTHorizontalFlowLayout on: es.
	v open