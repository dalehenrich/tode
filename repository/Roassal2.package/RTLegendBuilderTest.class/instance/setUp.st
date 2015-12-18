running
setUp
	super setUp.
	b := RTLegendBuilder new.
	b addText: 'Hapao show the coverage on which you have run it'.
	b addText: 'Big box = classes. Green classes are unit tests'.
	b addText: 'Inner box = method'.
	b addText: 'height = number of lines of code of '.
	b addText: 'width = number of methods that call it'.
	b addText: 'edge = static call between methods. Above calls below'.
	b addColor: Color black text: 'Method well tested'.
	b addColor: Color gray text: 'Method tested'.
	b addColor: Color red text: 'Method not tested'.
	b build