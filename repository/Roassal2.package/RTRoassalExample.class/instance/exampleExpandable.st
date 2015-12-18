sources
exampleExpandable

| v s es expand methods |
v := RTView new.

s := RTShapeBuilder new
		rectangle;
		width: [ :c | c numberOfVariables * 5 ]; height: #numberOfMethods.
		
es := s elementsOn: RTShape withAllSubclasses.
v add: es.

es @ RTPopup @ (RTLabelled new setAsHighlightable).

expand := (RTExpandable new
				group: [ :group :element | 
					methods := (RTBox new color: Color red) 
										elementsOn: element model rtmethods.
					RTGridLayout on: methods.
					methods @ RTPopup.
					group addAll: methods];
				afterBlock: [ RTGridLayout on: es] ).
es @ expand. 

RTGridLayout on: es.
^ v
