instance/class button bar support
browseInstanceProtocol: buttonBarClientElement
  ((TDBehaviorDefinition className: self className isMeta: false)
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