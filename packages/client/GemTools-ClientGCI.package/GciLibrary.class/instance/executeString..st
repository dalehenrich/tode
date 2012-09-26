Wrapper
executeString: aString

	^self
		apiGciExecuteStr: aString
		a: self oopNil.
