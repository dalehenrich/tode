public
removeLabelFrom: aRTElement 
	| callback label |
	callback := aRTElement attributeAt: #RTLabelledCallback ifAbsent: [ ^ self ].
	aRTElement trachelShape removeCallback: callback ifAbsent: [ ].
	label := aRTElement attributeAt: #RTLabelledLabel ifAbsent: [ ^ self ].
	label remove.
	aRTElement
		removeAttributeAt: #RTLabelledCallback;
		removeAttributeAt: #RTLabelledLabel.