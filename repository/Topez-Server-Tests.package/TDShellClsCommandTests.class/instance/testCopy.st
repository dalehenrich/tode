as yet unclassified
testCopy
  "run mostly without errors ... to keep me honest"

  | node newClass newCategory actualCategory |
  node := self createClassRefNode.
  self evaluateCommandString: 'cls --help copy'.
  newClass := self
    evaluateCommandString:
      'cls copy ' , self mockClassName , ' ' , self mockAlternateClassName.
  newClass removeFromSystem.
  newCategory := 'TDShellClsCommandMockClass-Other-Category'.
  newClass := self
    evaluateCommandString:
      'cls copy --category=' , newCategory , ' ' , self mockClassName , ' '
        , self mockAlternateClassName.
  self assert: (actualCategory := newClass category) = newCategory.
  newClass removeFromSystem.
  newClass := self
    evaluateCommandString:
      'cls copy @' , node printString , ' ' , self mockAlternateClassName.
  newClass removeFromSystem