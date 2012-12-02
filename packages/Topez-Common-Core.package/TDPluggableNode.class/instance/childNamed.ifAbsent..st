as yet unclassified
childNamed: childName ifAbsent: absentBlock
    ^ (self
        resolveSpecialChildNamed: childName
        ifAbsent: [ 
            (self elementBlock value: self value: childName value: absentBlock)
                parent: self;
                yourself ])
        topez: self topez;
        yourself