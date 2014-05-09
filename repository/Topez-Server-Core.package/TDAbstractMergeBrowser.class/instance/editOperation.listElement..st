actions
editOperation: operation listElement: listElement
  sourceWindowId := operation
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        parentObject: listElement parent;
        windowName: #'mergeSource';
        windowId: sourceWindowId;
        windowIsClosingBlock: [ :ignoredListElement | self sourceWindowIdIsClosing ];
        windowLabel: operation windowLabel;
        yourself)