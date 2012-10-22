as yet unclassified
sendersOf: aString level: level
    | selector aCollection |
    selector := aString asSymbol.
    aCollection := (SystemNavigation default sendersOf: selector)
        collect: [ :gsMethod | self messageElementFor: gsMethod inClass selector: gsMethod selector messagePattern: aString ].
    ^ self toString: (TZMessageElement hierarchyOrderFor: aCollection) level: level