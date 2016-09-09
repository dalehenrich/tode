private
argAndTempNamesAt: index
  | oop |
  oop := (self frameDict at: 'argAndTempOops') at: index.
  ^ TDRemoteObjectInspectorReference objectOop: oop session: session