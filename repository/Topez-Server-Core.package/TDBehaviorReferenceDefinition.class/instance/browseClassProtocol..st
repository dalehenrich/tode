instance/class button bar support
browseClassProtocol: buttonBarClientElement
  ((TDBehaviorReferenceDefinition
    behavior: self theBehavior theNonMetaClass class)
    username: self username;
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