accessing
reifyOopList: oopList classNamesForOopList: classNameOopList
  | objects classNames |
  objects := oopList
    collect: [ :oop | 
      | obj |
      obj := Object _objectForOop: oop.
      Reflection classOf: obj.
      (obj isSpecial or: [ obj isString ])
        ifTrue: [ obj ]
        ifFalse: [ TDOopReference new oop: oop ] ].
  classNames := classNameOopList collect: [ :oop | (Object _objectForOop: oop) class name ].
  ^ STON
    toString:
      {objects.
      classNames}