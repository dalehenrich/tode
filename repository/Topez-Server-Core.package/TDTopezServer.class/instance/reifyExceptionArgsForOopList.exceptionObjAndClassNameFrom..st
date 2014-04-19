accessing
reifyExceptionArgsForOopList: oopList exceptionObjAndClassNameFrom: errNum
  "sent by client on GemStone2.4.x stone"

  | objects classNames result args exception exceptionInfo |
  self ensureSessionMethodsEnabled.
  args := oopList collect: [ :oop | self reifyExceptionArg: oop ].
  objects := args
    collect: [ :each | 
      each isClass
        ifTrue: [ each name ]
        ifFalse: [ each ] ].
  exception := (Smalltalk at: #'ExceptionA') gsNumber: errNum arguments: args.
  exceptionInfo := {(exception asOop).
  (exception class name)}.
  result := STON
    toString:
      {objects.
      exceptionInfo}.
  self disableSessionMethods.
  ^ result