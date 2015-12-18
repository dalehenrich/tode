as yet unclassified
initLegend
	|lb |
	lb := RTLegendBuilder new.
	legendBuilder := lb.
	lb view: builder view.
	lb offset: -50.
	lb left.
	lb addText: 'References graph'.
	lb addColor: (Color orange alpha: 0.5) text: 'collection'.
	lb addColor: (Color yellow alpha: 0.5) text: 'association'.
	lb addColor: (Color brown alpha: 0.5) text: 'system'.
	lb addColor: (Color r: 0.557 g: 0.267 b: 0.678 alpha: 0.5) text: 'user profile'.
	lb addColor: (Color blue alpha: 0.5) text: 'others'.

