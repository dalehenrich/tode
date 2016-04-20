tests
testServicesMechanism
	| sawFoo |
	self should: [ self client perform: #foo ] raise: MessageNotUnderstood.
	sawFoo := false.
	self client registerService: [ :aClient | sawFoo := true ] for: #foo.
	self client perform: #foo.
	self assert: sawFoo.
	self client unregisterServiceFor: #foo.
	self should: [ self client perform: #foo ] raise: MessageNotUnderstood