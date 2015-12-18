creation
createPopupFor: element
	| el |
	el := self createElementFor: element.
	"el on: TRMouseLeave do: [ :e | el view remove: el ifAbsent: [  ] ]."

	"(self receivingViewFor: element) add: el.	"

	"self popups add: el."

	^ el