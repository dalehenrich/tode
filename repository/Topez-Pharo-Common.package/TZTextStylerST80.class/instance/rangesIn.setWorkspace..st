private
rangesIn: aText setWorkspace: aBoolean
  parser ifNil: [ parser := TZParserST80 new on: view model ].
  ^ parser
    rangesIn: aText asString
    classOrMetaClass: classOrMetaClass
    workspace:
      (aBoolean
        ifTrue: [ workspace ])
    environment: self proxyEnvironment