tests
testDefault

	| b p |
	b := RTGrapher new.
	p := RTHorizontalTickLineDecorator new.
	p builder: b.
	p lineFrom: 10 @ 10 to: 20 @ 20.