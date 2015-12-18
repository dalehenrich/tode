tests
testReverseBasic

	self assert: ((#(5 4 1 5 2) reverseSortedAs: #squared) asArray =  #(1 2 4 5 5) reverse )