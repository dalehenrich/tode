tools
fullLogMenuAction: listElement selectionIndex: index
  | commitLog oneline sha offset gitTool |
  oneline := (self history at: index) labelString.
  offset := oneline indexOf: Character space.
  sha := oneline copyFrom: 1 to: offset - 1.
  gitTool := self gitTool.
  commitLog := gitTool gitlogIn: self gitRepoDirectory with: '-1 ' , sha.
  sourceWindowId := commitLog
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        parentObject: listElement parent;
        windowName: #'commitLog';
        windowId: sourceWindowId;
        windowIsClosingBlock: [ :ignoredListElement | self sourceWindowIdIsClosing ];
        windowLabel: 'Commit log for ' , sha;
        yourself).
  ^ true