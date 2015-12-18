hook
doExecute: elements
	| extent index currentWeek |
	extent := elements inject: 0@0 into: [ :max :each | each extent max: max ].
	extent := extent + self gapSize.
	index := 0.
	currentWeek := nil.
	elements do: [ :e | | date position week |
		date := self selector rtValue: e model.
		(date isKindOf: Date) ifTrue: [ 
			week := date asWeek.
			currentWeek ifNil: [ currentWeek := week. index := index + 1. ].
			currentWeek = week ifFalse: [ currentWeek := week. index := index +1 ].
			position := date weekdayIndex @ index.
		] ifFalse: [ 
			(date isKindOf: Integer) 
				ifTrue: [ position := date @ index. ] 
				ifFalse: [ self error: 'invale value for date'. ] ].
		e translateTo: (extent * position).
		 ]