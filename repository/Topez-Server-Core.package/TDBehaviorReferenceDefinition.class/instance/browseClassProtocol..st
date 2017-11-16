instance/class button bar support
browseClassProtocol: buttonBarClientElement
  ((TDBehaviorReferenceDefinition
    behavior: self theBehavior theNonMetaClass class)
    appEnv: self appEnv;
    yourself)
    editUsing:
      ((TDEditorSpec
        topez: buttonBarClientElement topez
        editorAspect: #'classicProtocolList')
        windowName: #'classicProtocolList';
        windowLocation: #'classicProtocol';
        selectionIndex: 1;
        yourself).
  ^ true