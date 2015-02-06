menu actions
findClass: listElement selectedIndex: index
  | browseTool block clsNamePattern |
  browseTool := self topez toolInstanceFor: 'browse'.
  clsNamePattern := (GsTextInteraction
    prompt: 'Class Name Fragment:'
    template: 'Object') signal.
  block := [ browseTool findClass: clsNamePattern ].
  browseTool
    browseClassesBlock: block
    label: 'Find class ' , clsNamePattern printString.
  ^ true