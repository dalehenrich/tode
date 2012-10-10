accessing
list
    list ifNil: [ list := #() ].
    ^ list select: self listFilter