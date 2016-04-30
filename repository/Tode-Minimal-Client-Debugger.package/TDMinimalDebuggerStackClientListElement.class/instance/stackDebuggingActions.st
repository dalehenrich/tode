stack
stackDebuggingActions
	| menuSpec actions |
	menuSpec := self clientElement menuActionSpec.
	actions := OrderedCollection new.
	self constructActionsFrom: menuSpec addTo: actions.
	^ actions