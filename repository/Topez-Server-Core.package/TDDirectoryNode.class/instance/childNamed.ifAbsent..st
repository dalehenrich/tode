as yet unclassified
childNamed: childName ifAbsent: absentBlock
    ^ (self
        resolveSpecialChildNamed: childName
        ifAbsent: [ self contents at: childName ifAbsent: [ ^ absentBlock value ] ])
        topez: self topez;
        yourself