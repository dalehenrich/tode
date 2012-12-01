rendering
contents
    contents
        ifNil: [ 
            contents := '| tmp |
tmp := 3 +4.
^tmp' ].
    ^ contents value