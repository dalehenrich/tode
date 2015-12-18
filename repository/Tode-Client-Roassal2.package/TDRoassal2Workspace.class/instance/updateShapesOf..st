as yet unclassified
updateShapesOf: aRTGroup
	| view cut |

	view := self rtView.
	cut := ((view canvas extent y) / (tools size)).
	aRTGroup do: [:e | e width: (view canvas extent x); height: cut ]
	

	
