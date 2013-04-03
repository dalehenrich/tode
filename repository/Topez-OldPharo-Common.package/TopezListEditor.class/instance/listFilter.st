accessing
listFilter
    listFilter ifNil: [ listFilter := [ :each | true ] ].
    ^ listFilter