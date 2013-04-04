as yet unclassified
conditionLabel: aString problemCount: problemCount
    problemCount = 0
        ifTrue: [ ^ aString withSeparatorsCompacted copyReplaceAll: ' ' with: '.' ].
    ^ (aString withSeparatorsCompacted copyReplaceAll: ' ' with: '_') , '(' , problemCount printString , ')'