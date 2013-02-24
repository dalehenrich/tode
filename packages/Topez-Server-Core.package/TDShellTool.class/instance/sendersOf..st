as yet unclassified
sendersOf: aString
  | selector aCollection |
  selector := aString asSymbol.
  aCollection := (Smalltalk systemNavigation sendersOf: selector)
    collect: [ :gsMethod | 
      self
        messageElementFor: gsMethod inClass
        selector: gsMethod selector
        messagePattern: aString ].
  ^ TZMessageElement hierarchyOrderFor: aCollection