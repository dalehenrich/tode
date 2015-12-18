tests
testMinimumAndMaximum

	tab input: 
'5.4,1.2,0,hello world
-56,1.2,100,bravo' usingDelimiters: ','.
	tab convertColumnsAsFloat: #(1 2 3).
	self assert: tab minimum equals: -56.0.
	self assert: tab maximum equals: 100.
	
	self assert: (tab maxOfColumn: #first) equals: 5.4.
	self assert: (tab maxOfColumn: #second) equals: 1.2.
	self assert: (tab maxOfColumn: #third) equals: 100.0.
	
	self assert: tab firstColumn equals: #(5.4 -56).