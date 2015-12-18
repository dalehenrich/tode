sources
exampleCircularList
| builder lst |
	lst := LinkedList new.
	lst add: 1; add: 2; add: 3; add: 4.
	lst lastLink nextLink: (lst firstLink).
	
	builder := RTExploraBuilder new.
	builder layout: RTCircleLayout new;
		withPopup;
		node: lst firstLink;
		onClickExplore: [ :link | Array with: link nextLink ].
	
	^ builder 