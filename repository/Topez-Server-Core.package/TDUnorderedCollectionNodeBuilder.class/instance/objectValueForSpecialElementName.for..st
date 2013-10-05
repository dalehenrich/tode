as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(index list)'
    ifTrue: [ ^ anObject _indexedPaths ].
  ^ super objectValueForSpecialElementName: elementName for: anObject