accessing
getSelection
    self edittingCode
        ifTrue: [ 
            | elementClass |
            elementClass := self sourceElement asTopezProxy proxyClassName asString.
            (elementClass = 'TZFrameMethodElement' or: [ elementClass = 'TZExecutedCodeElement' ])
                ifTrue: [ ^ self sourceElement selectionBegin asTopezNative to: self sourceElement selectionEnd asTopezNative ] ].
    ^ 1 to: 0