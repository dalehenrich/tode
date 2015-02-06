menu actions
toolTestClass: listElement selectedIndex: index
  | findTool testTool block clsNamePattern list classNames className |
  findTool := self topez toolInstanceFor: 'find'.
  clsNamePattern := (GsTextInteraction
    prompt: 'Test Class Name Fragment:'
    template: 'Test') signal.
  list := findTool findClass: clsNamePattern.
  classNames := list collect: [ :cls | cls className asString ].
  className := (GsChoiceInteraction
    prompt: 'Choose a class'
    labels: classNames
    values: classNames) signal.
  className ifNil: [ ^ false ].
  testTool := self topez toolInstanceFor: 'test'.
  testTool testclass: {className}.
  ^ true