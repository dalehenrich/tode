accessing
edit: anObject using: aTDEditorSpec
  | element |
  element := self clientElementFor: anObject using: aTDEditorSpec.
  ^ self editElement: element