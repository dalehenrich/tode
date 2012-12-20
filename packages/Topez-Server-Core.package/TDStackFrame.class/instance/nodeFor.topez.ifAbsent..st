as yet unclassified
nodeFor: elementName topez: topez ifAbsent: absentBlock
    | index |
    (self baseNodeNames includes: elementName)
        ifTrue: [ ^ (self perform: (self baseNodeMap at: elementName)) asTDObjectNode: topez aspect: #'debug' ].
    index := self argAndTempNames indexOf: elementName.
    index = 0
        ifTrue: [ ^ absentBlock value ].
    ^ (self argAndTempNamesAt: index) asTDObjectNode: topez aspect: #'debug'