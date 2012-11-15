as yet unclassified
sendersOf: aString
    | selector aCollection |
    selector := aString asSymbol.
    aCollection := (SystemNavigation default sendersOf: selector)
        collect: [ :gsMethod | self messageElementFor: gsMethod inClass selector: gsMethod selector messagePattern: aString ].
    ^ TZMessageElement hierarchyOrderFor: aCollection