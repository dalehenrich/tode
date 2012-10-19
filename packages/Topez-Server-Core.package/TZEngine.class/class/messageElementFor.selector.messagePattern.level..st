metacello
messageElementFor: aBehavior selector: selector messagePattern: aString level: level
    | element |
    element := self messageElementFor: aBehavior selector: selector messagePattern: aString.
    ^ self toString: element level: level