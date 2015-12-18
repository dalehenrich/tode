public
buildSchema: aView
	| group box r label e1 e2  l h |
	self prepare: self methodShape selector: #methodselector.
	self prepare: self attributeShape selector: #attributeselector.

	classes do: [ :object | 
		group := RTGroup new.
		
		group add: ((RTLabel new height: self fontSizeOfClassname; 
			text: [:c| self classNameFor: c]) 
			elementOn: object).
			
		label := self attributeShape shape.
		(self attributesOf: object) do: [ :attribute |
			group add: (label elementOn: attribute) ].
		RTVerticalLineLayout new gapSize: 0; on: group.
		r := group encompassingRectangle.
		h := r height.
		
		label := self methodShape shape.
		(self methodsForClass: object) do: [:method | 
			group add: (label elementOn: method) ].
	
		RTVerticalLineLayout new gapSize: 0; on: group.
		r := group encompassingRectangle.
		group first trachelShape 
			translateTo: (r center x @ group first trachelShape center y).
		box := (RTBox new color: Color white; borderColor: Color gray) 
			elementOn: object.
		e1 := (RTBox new extent: 0@0) elementOn: 'p1'.
		e2 := (RTBox new extent: 0@0) elementOn: 'p2'.
		e1 trachelShape translateTo: r left@h.
		e2 trachelShape translateTo: r right@h.
		l := RTEdge from: e1 to: e2.
		l + (RTLine new color: Color gray).
		group add: e1; add: e2; add: l.
		RTNest new on: box nest: group.
	
		box @ RTDraggable.
		classesGroup add: box.
		aView add: box.
		aView addAll: group.
	].
	