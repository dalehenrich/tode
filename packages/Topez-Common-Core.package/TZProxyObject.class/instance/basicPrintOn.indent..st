printing
basicPrintOn: aStream indent: indent
    self header printOn: aStream.
    (named notNil and: [self named notEmpty])
        ifTrue: [ 
            aStream cr.
            self basicPrintNamedOn: aStream indent: indent ].
    self indexed notEmpty
        ifTrue: [ 
            aStream cr.
            self basicPrintIndexedOn: aStream indent: indent ]