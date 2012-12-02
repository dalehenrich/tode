*topez-common-core
renderText: attribute on: textStream indent: indent

	attribute == #display
		ifTrue: [ self tzNodeDisplayOn: textStream ] 
		ifFalse: [ textStream nextPutAll: self asString asText ]