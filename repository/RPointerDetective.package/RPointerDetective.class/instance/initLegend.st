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
	lb addColor: (Color yellow alpha: 0.5) text: 'workspace variable'.
	lb addColor: (Color brown alpha: 0.5) text: 'morph'.
	lb addColor: (Color blue alpha: 0.5) text: 'others'.
	lb addColor: (Color white alpha: 0.5) text: 'reference lost, generally a RBLiteralValueNode'.
