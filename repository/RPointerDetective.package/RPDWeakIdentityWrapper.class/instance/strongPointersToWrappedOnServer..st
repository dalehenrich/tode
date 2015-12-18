as yet unclassified
strongPointersToWrappedOnServer: atODEShell
"This method is supposed to work on tODE, shell as a global variable and classes and methods inside serverOn: blocks are Gemstones objects"

	self wrappedObject 
		ifNil: [ ^ {}  ]  "Weakly wrapped object may have been garbage collected"
		ifNotNil: [
			| target res|
			target := self wrappedObject.
			res := atODEShell onServerDo: [
				System commitTransaction.
				((Object _objectForOop: (target)) findAllReferences) collect: [:r | r asOop]
				].
			res size > 10 ifTrue: [
						| size |  
							size := self popChoice: res size.
							res := res first: size.
					].
			^ res 
			].