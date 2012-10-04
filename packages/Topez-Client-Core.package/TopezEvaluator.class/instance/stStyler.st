shout
stStyler
    stStyler
        ifNil: [ 
            stStyler := SHTextStylerST80 new
                classOrMetaClass: Object;
                yourself ].
    ^ stStyler