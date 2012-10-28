as yet unclassified
childNamed: elementName ifAbsent: absentBlock
    | element |
    elementName = '..'
        ifTrue: [ ^ self parent ].
    elementName = '.'
        ifTrue: [ ^ self ].
    element := self elementBlock value: self value: elementName value: absentBlock.
    element parent: self.
    ^ element