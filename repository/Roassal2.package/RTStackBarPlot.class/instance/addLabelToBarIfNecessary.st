private - utility
addLabelToBarIfNecessary
	labelBlock ifNil: [ ^ self ].
	view elements do: [ :e | 
		(labelConditionalBlock rtValue: e model)
			ifTrue: [ e @ (RTLabelled new center; color: labelColor; text: labelBlock) ] ].