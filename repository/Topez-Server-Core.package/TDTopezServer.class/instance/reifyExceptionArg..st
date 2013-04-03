accessing
reifyExceptionArg: oop
  "assuming no recursive structures"

  | obj oopClass |
  ^ oop == nil
    ifTrue: [ nil ]
    ifFalse: [ 
      obj := Object _objectForOop: oop.
      oopClass := Reflection classOf: obj.
      oopClass == Array
        ifTrue: [ obj collect: [ :each | self reifyExceptionArg: each asOop ] ]
        ifFalse: [ 
          ((oopClass == ClientForwarder) not and: [ obj isSpecial or: [ obj isString ] ])
            ifTrue: [ obj ]
            ifFalse: [ 
              TDOopReference new
                oop: oop;
                className: oopClass name;
                yourself ] ] ]