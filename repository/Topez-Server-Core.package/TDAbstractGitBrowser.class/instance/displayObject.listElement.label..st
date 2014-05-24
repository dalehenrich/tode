actions
displayObject: anObject listElement: listElement label: aLabel
  sourceWindowId := anObject
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        parentObject: listElement parent;
        windowName: #'mergeSource';
        windowId: sourceWindowId;
        windowIsClosingBlock: [ :ignoredListElement | self sourceWindowIdIsClosing ];
        windowLabel: aLabel;
        yourself)