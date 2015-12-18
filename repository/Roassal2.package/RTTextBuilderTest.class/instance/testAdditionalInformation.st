tests
testAdditionalInformation
	| text trigger elHello elWorld |
	text := 'hello world'.
	trigger := false.
	builder wordHook: [ :anElement :anInterval | 
								anElement model = 'hello' 
									ifTrue: [ anElement attributeAt: #myValue put: 'value' ] ]. 
	builder wordInteraction 
				when: TRMouseClick 
				do: [ :event | (event element hasAttribute: #myValue) 
										ifTrue: [ trigger := true ] ].
	builder addText: text.

	elHello := builder view elementFromModel: 'hello'.
	elWorld := builder view elementFromModel: 'world'.
	
	self assert: (elHello hasAttribute: #myValue).
	self deny: (elWorld hasAttribute: #myValue).
	self assert: (elHello attributeAt: #myValue) = 'value'.

	self deny: trigger.
	elHello announce: (TRMouseClick new shape: elHello trachelShape).
	self assert: trigger.
	
	trigger := false.
	self deny: trigger.
	elWorld announce: (TRMouseClick new shape: elWorld trachelShape).
	self deny: trigger.
	