accessing
miniToolSpec
  miniToolSpec
    ifNil: [ 
      miniToolSpec := (TDMiniToolSpec
        topez: self topez
        clientListBlock: self clientListBlock
        menuActionSpecBlock: self menuActionSpecBlock
        menuActionBlock: self menuActionBlock
        itemSelectedBlock: self itemSelectedBlock
        windowIsClosingBlock: self windowIsClosingBlock)
        windowLabel: self windowLabel;
        windowId: self windowId;
        windowName: self windowName;
        windowLocation: self windowLocation;
        selectionIndex: self selectionIndex;
        highlightIndex: self highlightIndex;
        parentList: self parentList;
        beMultipleSelection: self beMultipleSelection;
        yourself ].
  ^ miniToolSpec