as yet unclassified
childNamed: childName ifAbsent: absentBlock
    childName = '..'
        ifTrue: [ ^ self parent ].
    childName = '.'
        ifTrue: [ ^ self ].
    ^ self contents at: childName ifAbsent: absentBlock