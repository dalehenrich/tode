sources
exampleVeryBasic
	| b |
	b := RTSpectrograph new.
	b objects: #(1 2 3 4 5).
	b lineBlock: [ :v | (1 to: v) ].
	b highlight: [ :x :y | y odd ].
b build.
^ b view