accessing
reifyExceptionArgsForOopList: oopList classNamesForOopList: classNameOopList
  | objects classNames result |
  self ensureSessionMethodsEnabled.
  objects := oopList collect: [ :oop | self reifyExceptionArg: oop ].
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