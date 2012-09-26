Private
processResult: result
	| error actionArray cursor |
	(result = self library oopNil)
		ifFalse: [^self library localFor: result].
	(error := self getAndClearLastError) isNil 
		ifTrue: [ ^self library localFor: result ].
	(self isCompileError: error) ifTrue: [
		GsCompileError new
			session: self;
			tag: error;
			signal.
	].
	cursor := Sensor currentCursor.
	actionArray := error number == 2336
		ifTrue: [
			GsClientForwarderSendNotification new
				session: self;
				tag: error; 
				signal]
		ifFalse: [
			GsRuntimeError new
				session: self;
				tag: error;
				signal].
	[cursor show] fork.
	actionArray isArray
		ifTrue: [ 
			((actionArray at: 1) == #resume)
				ifTrue: [ | r a b  |
					a := self library oopFor: (actionArray at: 2).
					b := self library oopFor: 1.
					r := self library 
						apiGciContinueWith: error context asOopType
						a: (self library oopTypeClass fromInteger: a)
						a: (self library oopTypeClass fromInteger: b).
					^self processResult: r]]
		ifFalse: [
			actionArray == #resume
				ifTrue: [ | r |
					r := self library apiGciContinue: error context asOopType.
					^self processResult: r]].
	self halt: 'improper action after error'.