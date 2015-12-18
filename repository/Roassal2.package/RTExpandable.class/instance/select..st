as yet unclassified
select: element
	| es |
	"es := self createOrRetreiveElementsFor: element."
	es := self createAndRememberElementsFor: element.
	
	element view addAll: es.

	RTNest new 
		on: element nest: es.
		
	self evaluateAfterBlock.
