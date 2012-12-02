as yet unclassified
resolveSpecialChildNamed: childName ifAbsent: absentBlock
    childName = '..'
        ifTrue: [ ^ self parent ].
    childName = '.'
        ifTrue: [ ^ self ].
    ^ self topez resolveHaloNamed: childName for: self ifAbsent: absentBlock