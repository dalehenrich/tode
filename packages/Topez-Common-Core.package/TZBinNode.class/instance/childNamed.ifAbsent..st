as yet unclassified
childNamed: elementName ifAbsent: absentBlock
    | block |
    block := self contents at: elementName ifAbsent: absentBlock.
    ^ TZLeafNode new
        name: elementName;
        parent: self;
        contents: block asString;
        yourself