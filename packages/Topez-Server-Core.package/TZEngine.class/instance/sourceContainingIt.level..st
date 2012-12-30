as yet unclassified
sourceContainingIt: aString level: level
  | methodRefs aCollection |
  methodRefs := SystemNavigation default
    allMethodsNoDoitsSelect: [ :m | (m _sourceString findString: aString asString startingAt: 1 caseSensitive: false) > 0 ].
  aCollection := methodRefs
    collect: [ :methodRef | self messageElementFor: methodRef actualClass selector: methodRef selector messagePattern: aString ].
  ^ self toString: (TZMessageElement hierarchyOrderFor: aCollection) level: level