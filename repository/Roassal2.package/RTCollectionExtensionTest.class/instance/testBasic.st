tests
testBasic

	self assert: ((#(5 4 1 5 2) sortedAs: #squared) asArray =  #(1 2 4 5 5) )