as yet unclassified
colorAndServerBlock: anAssociation
		
	self assert: (anAssociation isKindOf: Association).
	self assert: ((anAssociation key isKindOf: Color) & (anAssociation value isKindOf: BlockClosure)).
	
	colorConditionBlocks at: (anAssociation key) put: (anAssociation value).