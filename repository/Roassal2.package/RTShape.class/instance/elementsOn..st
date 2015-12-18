public
elementsOn: models
	| group |
	group := RTGroup new.
	models do: [ :m | group add: (self elementOn: m) ].
	^ group