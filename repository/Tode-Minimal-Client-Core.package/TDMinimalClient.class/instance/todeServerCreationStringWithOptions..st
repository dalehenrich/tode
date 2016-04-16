private
todeServerCreationStringWithOptions: withOptions
	| str |
	str := 'TDTopezServer createFor: 1'.
	withOptions
		ifTrue: [ str := str , ' options: #(#transcript)' ].
	^ str