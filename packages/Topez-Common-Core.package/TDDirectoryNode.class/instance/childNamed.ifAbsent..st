as yet unclassified
childNamed: childName ifAbsent: absentBlock
    ^ (self resolveSpecialChildNamed: childName ifAbsent: [ self contents at: childName ifAbsent: absentBlock ])
        topez: self topez;
        yourself