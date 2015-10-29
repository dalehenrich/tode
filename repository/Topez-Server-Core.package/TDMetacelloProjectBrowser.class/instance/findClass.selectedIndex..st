menu actions
findClass: listElement selectedIndex: index
  | browseTool block clsNamePattern |
  browseTool := self topez toolInstanceFor: 'browse'.
  clsNamePattern := (GsTextInteraction
    prompt: 'Class Name Pattern (regex)'
    template: 'Object') signal.
  clsNamePattern ifNil: [ ^ false ].
  block := [ browseTool findClass: clsNamePattern ].
  browseTool
    browseClassesBlock: block
    label: 'Find class ' , clsNamePattern printString.
  ^ true