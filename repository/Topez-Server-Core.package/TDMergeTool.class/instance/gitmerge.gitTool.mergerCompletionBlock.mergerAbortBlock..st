accessing
gitmerge: aGitMerger gitTool: gitTool mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  merger := aGitMerger
    mergeTool: self;
    gitTool: gitTool;
    mergerCompletionBlock: [ 
          self mergerWindowClosing.
          aMergerCompletionBlock value ];
    mergerAbortBlock: aMergerAbortBlock;
    yourself.
  self mergerNode: self createMergerNode.
  topez := self topez spawnWindow.
  topez currentNode: self mergerNode.
  mergeWindowId := self merger
    editUsing: (TDEditorSpec topez: topez editorAspect: #'merge')