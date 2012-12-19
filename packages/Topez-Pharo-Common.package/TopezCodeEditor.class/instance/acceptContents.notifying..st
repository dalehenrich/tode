accessing
acceptContents: aStringOrText notifying: aController
    "Set aString to be the contents of the receiver.  Return true cuz happy"

    | selector newMethodElement formattedString |
    self edittingCode
        ifTrue: [ 
            self topez setClassProxy: self sourceElement elementClass.
            self topez setCategory: self sourceElement category asTopezNative.
            formattedString := self format: aStringOrText asString.
            newMethodElement := self sourceElement isMeta asTopezNative
                ifTrue: [ self topez classMethod: formattedString ]
                ifFalse: [ self topez method: formattedString ].
            self contents: newMethodElement ]
        ifFalse: [ self sourceElement source: aStringOrText ].
    ^ true