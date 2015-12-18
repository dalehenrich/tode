public
setGraphMenuOn: view
	| builder |
	builder := self new view: view.
	builder
		menu: 'Find'
		background: Color blue
		callback: [ | element |
			element := TRPlatform current 
				dialogChooseFrom: (view elements collect: #model)
				values: view elements.
			element notNil
				ifTrue: [
					view canvas camera translateTo: element position.
					RTBlink on: element ] ].