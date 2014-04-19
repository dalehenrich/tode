browse
browseMethods: methodDefinitions label: windowLabel
  methodDefinitions
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: windowLabel;
        yourself).
  ^ methodDefinitions