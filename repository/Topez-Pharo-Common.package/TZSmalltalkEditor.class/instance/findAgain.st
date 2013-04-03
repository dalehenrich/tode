menu messages
findAgain
    "Find the text-to-find again."

    | where |
    self findReplaceService isRegex
        ifTrue: [ where := self findReplaceService findInTextMorph: self morph ]
        ifFalse: [ 
            where := self findReplaceService findNextSubString: self findReplaceService findString inTextMorph: self morph.
            where isNil
                ifTrue: [ self flash ]
                ifFalse: [ self selectInterval: where ] ].
    ^ where