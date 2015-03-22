find
gemtoolfindClass
  | browseTool block clsNamePattern |
  browseTool := self topez toolInstanceFor: 'browse'.
  clsNamePattern := (GsTextInteraction
    prompt: 'Class Name Fragment:'
    template: 'Object') signal.
  clsNamePattern ifNil: [ ^ false ].
  block := [ browseTool findClass: clsNamePattern ].
  browseTool
    browseClassesBlock: block
    label: 'Find class ' , clsNamePattern printString.
  ^ true