accessing
acceptContents: aStringOrText notifying: aController
    "Set aString to be the contents of the receiver.  Return true cuz happy"

    | selector newMethodElement formattedString |
    self topez setClass: self sourceElement proxyClassName.
    self topez setCategory: self sourceElement category.
    formattedString := self format: aStringOrText.
    newMethodElement := self sourceElement isMeta
        ifTrue: [ self topez classMethod: formattedString ]
        ifFalse: [ self topez method: formattedString ].
    self contents: newMethodElement.
    ^ true