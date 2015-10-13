private
browseSelectorListFor: protocolDefinition topez: aTopez
  protocolDefinition
    editUsing:
      ((TDEditorSpec topez: aTopez editorAspect: #'classicProtocolSelectors')
        windowName: #'classicSelectors';
        yourself)