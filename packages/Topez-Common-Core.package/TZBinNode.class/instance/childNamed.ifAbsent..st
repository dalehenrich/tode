as yet unclassified
childNamed: elementName ifAbsent: absentBlock
    | block |
    elementName = '..'
        ifTrue: [ ^ self parent ].
    elementName = '.'
        ifTrue: [ ^ self ].
    block := self contents at: elementName ifAbsent: absentBlock.
    ^ TZBinLeafNode new
        name: elementName;
        parent: self;
        contents: block asString;
        yourself