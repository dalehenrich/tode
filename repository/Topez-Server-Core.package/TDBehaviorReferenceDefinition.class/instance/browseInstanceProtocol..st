instance/class button bar support
browseInstanceProtocol: buttonBarClientElement
  (TDBehaviorReferenceDefinition behavior: self theBehavior theNonMetaClass)
    editUsing:
      ((TDEditorSpec
        topez: buttonBarClientElement topez
        editorAspect: #'classicProtocolList')
        windowName: #'classicProtocolList';
        windowLocation: #'classicProtocol';
        selectionIndex: 1;
        yourself).
  ^ true