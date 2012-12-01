rendering
contents
    contents ifNil: [ contents := 'cat /tools/core/bin/abort' ].
    ^ contents value