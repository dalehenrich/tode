accessing
nativeIn: topez
  native
    ifNil: [ 
      "convert to a native object ... Array, String, SmallInteger, etc."
      native := topez session library
        localFor: (topez session asOopType: self oop).
      (native isKindOf: OopType)
        ifTrue: [ 
          | theClassOop theClassName oopType |
          "oops ... not native, so create a proxy"
          oopType := native.
          theClassOop := topez session library
            critical: [ :lib | lib apiGciFetchClass: oopType ].
          theClassOop := topez session asOopType: theClassOop.
          theClassOop = topez session library oopNil
            ifTrue: [ self error: 'The object does not exist' ].
          theClassName := (topez session
            receiverNB: theClassOop
            perform: #'name'
            withArgs: #()
            envId: topez environmentId) asString.
          native := TZProxyGemStone new
            header:
              (TZHeaderGemStone
                oop: oopType asOop
                classOop: theClassOop
                className: theClassName) ] ].
  ^ native