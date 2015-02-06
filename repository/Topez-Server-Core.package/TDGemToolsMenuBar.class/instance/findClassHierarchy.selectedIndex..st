menu actions
findClassHierarchy: listElement selectedIndex: index
  | browseTool block clsNamePattern |
  browseTool := self topez toolInstanceFor: 'browse'.
  clsNamePattern := (GsTextInteraction
    prompt: 'Class Name Fragment:'
    template: 'Object') signal.
  block := [ 
  | list classNames |
  list := browseTool findClass: clsNamePattern.
  classNames := list collect: [ :cls | cls className asString ].
  browseTool findClassHierarchy: classNames ].
  browseTool
    browseClassesBlock: block
    label: 'Find class hierarchy' , clsNamePattern printString.
  ^ true