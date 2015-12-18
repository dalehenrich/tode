examples
example4
	"
	self new example4
	"
	| b |
	b := RTUMLClassBuilder new.
	b methodShape label
		if: [ :method | method selector beginsWith: 'init' ] color: Color green;
		if: [ :method | method selector beginsWith: 'with' ] color: Color red.
			
	b attributeShape label
		if: [ :attribute | attribute beginsWith: 'a' ] color: Color blue.
	b addObjects: RTShape withAllSubclasses.
	b treeLayout; open.
		