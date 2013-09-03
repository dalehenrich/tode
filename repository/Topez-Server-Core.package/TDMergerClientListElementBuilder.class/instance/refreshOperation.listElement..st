as yet unclassified
refreshOperation: operation listElement: listElement
  operation
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        parentObject: listElement parent;
        windowName: #'mergeSource';
        windowLabel: operation windowLabel;
        yourself)