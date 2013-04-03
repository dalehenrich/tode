input character filtering
confirmBeforeKilling: externalProxies
	"Interrupt character detected, do interrupt stuff."

	| msgStrm |
	(externalProxies size > 0)
		ifTrue:
			[msgStrm := WriteStream on: String new.
			(externalProxies size > 1)
				ifTrue: [msgStrm nextPutAll: 'kill processes']
				ifFalse: [msgStrm nextPutAll: 'kill process'].
			externalProxies do: [:e | msgStrm nextPutAll: ' ', e pid printString, ' (', e programName, ')'].
			msgStrm nextPut: $?.
			(self confirm: msgStrm contents)
				ifTrue:
					[externalProxies reverseDo: [:e | e terminate]]]
