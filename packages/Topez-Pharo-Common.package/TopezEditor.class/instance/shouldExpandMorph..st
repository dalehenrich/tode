accessing
shouldExpandMorph: aMorph
    (aMorph == self codeEditor morph or: [ aMorph == self listEditor morph ])
        ifTrue: [ ^ self aMorph == self activeEditor morph ].
    ^ true