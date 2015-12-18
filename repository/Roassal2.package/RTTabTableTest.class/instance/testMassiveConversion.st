tests
testMassiveConversion

	tab input: '
	m1	m2	m3
A	1	2	5
B	2	5	4
C	1	7	4	'.
	tab removeFirstRow.
	self assert: tab values first second = '1'.
	self assert: tab values third third = '7'.
	
	tab convertColumns: (2 to: 4) to: [ :s | s asInteger ]. 
	self assert: tab values first second = 1.
	self assert: tab values third third = 7.
	
	self assert: tab minimum = 1.
	self assert: tab maximum = 7.
	
	self assert: (tab maxOfColumn: #second) = 2.
	self assert: (tab maxOfColumn: #fourth) = 5.
	self assert: (tab maxOfColumn: [ :row | row at: 3 ]) = 7.