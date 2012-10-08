accessing
contents
    "Answer the contents that the receiver is holding--presumably a string."

self sourceElement ifNil: [ ^''].
    ^ self sourceElement source