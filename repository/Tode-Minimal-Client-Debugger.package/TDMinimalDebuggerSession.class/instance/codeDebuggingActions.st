code
codeDebuggingActions
	| menuSpec actions |
	menuSpec := self codeClientElement menuActionSpec.
	actions := OrderedCollection new.
	self constructActionsFrom: menuSpec addTo: actions.
	^ actions