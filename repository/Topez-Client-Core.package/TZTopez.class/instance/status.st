accessing
status
    status ifNil: [ status := TZTopezStatus new yourself ].
    ^ status