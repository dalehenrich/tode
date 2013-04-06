as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect className itemAttribute classAttributes selector method isMeta cl methodDef |
  itemAttribute := listElement itemCache at: index.
  classAttributes := itemAttribute object.
  aspect := itemAttribute aspect.
  className := classAttributes at: 1.
  selector := classAttributes at: 3.
  isMeta := classAttributes at: 2.
  cl := Smalltalk classNamed: className.
  isMeta
    ifTrue: [ cl := cl class ].
  method := cl compiledMethodAt: selector.
  TDMethodDefinition selectMethod: method topez: listElement topez.
  methodDef := TDMethodDefinition
    className: cl theNonMetaClass name
    isMeta: cl isMeta
    selector: selector.
  methodDef
    edit: nil
    topez: listElement topez
    aspect: #'method'
    windowName: #'method'
    windowId: nil.
  ^ nil