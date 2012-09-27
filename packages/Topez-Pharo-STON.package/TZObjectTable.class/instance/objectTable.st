accessing
objectTable
    objectTable ifNil: [ objectTable := IdentityDictionary new ].
    ^ objectTable