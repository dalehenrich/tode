public
fruits
	^ Array with: (self new values: #(6 8 5 2 6 5 7 9); color: Color red; name: 'apple')
		with: (self new values: #(5 7 3 7 7 7 6 5); color: Color green; name: 'orange')
		with: (self new values: #(4 3 5 9 5 5 4 4); color: Color blue; name: 'banana')