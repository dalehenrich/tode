sources
exampleRingChart

| b |
b := RTPieBuilder new.
b interaction popup.
b shape current
	innerRadius: 70;
	externalRadius: 100.
b objects: (Array with: Dictionary with: Collection with: Set with: OrderedCollection ).
b slice: #numberOfMethods.
b normalizer distinctColor.	
b build.
^ b view