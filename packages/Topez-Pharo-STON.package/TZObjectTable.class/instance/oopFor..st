api
oopFor: anObject
    ^ self objectTable
        at: anObject
        ifPresent: [ :oop | oop ]
        ifAbsent: [ self objectTable at: anObject put: self nextOop ]