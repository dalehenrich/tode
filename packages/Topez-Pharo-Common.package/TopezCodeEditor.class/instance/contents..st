accessing
contents: stringOrText
(stringOrText isKindOf: TZSourceElement) ifTrue: [ 
    self sourceElement: stringOrText] ifFalse: [ self halt].
    self changed: #'contents'