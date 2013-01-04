accessing
reifyOopList: oopList classNamesForOopList: classNameOopList
  | objects classNames |
  objects := oopList collect: [ :oop | Object _objectForOop: oop ].
  classNames := classNameOopList collect: [ :oop | (Object _objectForOop: oop) class name ].
  ^ STON
    toString:
      {objects.
      classNames}