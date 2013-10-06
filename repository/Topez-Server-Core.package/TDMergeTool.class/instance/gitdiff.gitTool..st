accessing
gitdiff: aGitDiffer gitTool: gitTool
  merger := aGitDiffer
    diffTool: self;
    gitTool: gitTool;
    yourself.
  self mergerNode: self createMergerNode.
  topez := self topez spawnWindow.
  topez currentNode: self mergerNode.
  mergeWindowId := self merger
    editUsing: (TDEditorSpec topez: topez editorAspect: #'diff')