sources
exampleExtensibleLabels

| v e s |
v := RTView new.

s := RTExtensibleLabel new.
40 timesRepeat: [
	e := s elementOn: 'Hello World'.
	e extent: (50 atRandom + 10) @ (50 atRandom + 10).
	v add: e. ].
RTFlowLayout on: v elements.
^ v