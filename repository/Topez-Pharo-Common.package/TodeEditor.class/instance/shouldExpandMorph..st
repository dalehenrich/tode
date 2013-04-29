accessing
shouldExpandMorph: aMorph
    (aMorph == self codeEditor morph or: [ aMorph == self listEditor morph ])
        ifTrue: [ ^ aMorph == self activeEditor morph ].
    ^ true