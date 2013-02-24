accessing
reifyExceptionArgsForOopList: oopList classNamesForOopList: classNameOopList
  | objects classNames |
  self ensureSessionMethodsEnabled.
  objects := oopList collect: [ :oop | self reifyExceptionArg: oop ].
  classNames := classNameOopList
    collect: [ :oop | 
      oop == nil
        ifTrue: [ nil ]
        ifFalse: [ (Object _objectForOop: oop) class name ] ].
  ^ STON
    toString:
      {objects.
      classNames}