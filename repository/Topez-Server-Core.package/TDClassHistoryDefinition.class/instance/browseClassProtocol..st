instance/class button bar support
browseClassProtocol: buttonBarClientElement
  ((TDBehaviorHistoryDefinition
    className: self className
    isMeta: true
    classHistoryIndex: self classHistoryIndex)
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