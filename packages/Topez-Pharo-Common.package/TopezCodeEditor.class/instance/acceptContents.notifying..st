accessing
acceptContents: aStringOrText notifying: aController
    "Set aString to be the contents of the receiver.  Return true cuz happy"

    | selector newMethodElement |
    self topez setClass: self sourceElement proxyClassName.
    self topez setCategory: self sourceElement category.
    newMethodElement := self sourceElement isMeta
        ifTrue: [ self topez classMethod: aStringOrText asString ]
        ifFalse: [ self topez method: aStringOrText asString ].
    self contents: newMethodElement.
    ^ true