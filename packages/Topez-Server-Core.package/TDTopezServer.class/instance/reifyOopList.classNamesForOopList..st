accessing
reifyOopList: oopList classNamesForOopList: classNameOopList
  | objects classNames |
  objects := oopList
    collect: [ :oop | 
      | obj oopClass |
      oop == nil
        ifTrue: [ nil ]
        ifFalse: [ 
          obj := Object _objectForOop: oop.
          oopClass := Reflection classOf: obj.
          ((oopClass includesBehavior: ClientForwarder) not and: [ obj isSpecial or: [ obj isString ] ])
            ifTrue: [ obj ]
            ifFalse: [ 
              TDOopReference new
                oop: oop;
                className: oopClass name;
                yourself ] ] ].
  classNames := classNameOopList
    collect: [ :oop | 
      oop == nil
        ifTrue: [ nil ]
        ifFalse: [ (Object _objectForOop: oop) class name ] ].
  ^ STON
    toString:
      {objects.
      classNames}