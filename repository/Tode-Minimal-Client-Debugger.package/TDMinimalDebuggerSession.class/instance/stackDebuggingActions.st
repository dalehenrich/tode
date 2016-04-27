stack
stackDebuggingActions
	| menuSpec actions |
	menuSpec := self stackClientElement menuActionSpec.
	actions := OrderedCollection new.
	self constructActionsFrom: menuSpec addTo: actions.
	^ actions