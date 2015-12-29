as yet unclassified
strongPointersToWrappedOnServerExcept: anArray withShell: atODEShell
"This method is supposed to work on tODE, shell as a global variable and classes and methods inside serverOn: blocks are Gemstones objects"

	self wrappedObject 
		ifNil: [ ^ {}  ]  "Weakly wrapped object may have been garbage collected"
		ifNotNil: [ "Here we are going to extract the full graph, In that case of scan we enter onlyOnce this method"
			| target result |
			target := self wrappedObject.
			result := ((atODEShell onServerDo: [
					|scan res|
					System commitTransaction. 
					res := OrderedCollection new.
					scan := (SystemRepository findAllReferencePathsToObjects: {(Object _objectForOop: (target))} limitObjArray: (anArray collect: [ :e | Object _objectForOop: e ]) printToLog: false).
					scan do: [:s |
						| resTemp |
						resTemp := OrderedCollection new.
						s third do: [:st | resTemp add: (st collect: [:stt | stt asOop])].   
						res add: {(s first asOop). (s second). (resTemp asArray)}.
						].
					res asArray] )first).
								
			^ result	
			].