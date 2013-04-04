accessing
reifyExceptionArgsForOopList: oopList classNamesForOopList: classNameOopList
  "sent by client on GemStone3.x stone"

  | objects classNames result |
  self ensureSessionMethodsEnabled.
  objects := (oopList collect: [ :oop | self reifyExceptionArg: oop ])
    collect: [ :each | 
      each isClass
        ifTrue: [ each name ]
        ifFalse: [ each ] ].
  classNames := classNameOopList
    collect: [ :oop | 
      oop == nil
        ifTrue: [ nil ]
        ifFalse: [ (Object _objectForOop: oop) class name ] ].
  result := STON
    toString:
      {objects.
      classNames}.
  self disableSessionMethods.
  ^ result