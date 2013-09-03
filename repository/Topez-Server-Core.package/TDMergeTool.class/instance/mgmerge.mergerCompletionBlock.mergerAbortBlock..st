accessing
mgmerge: anMCMerger mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  merger := TDMerger new
    merger: anMCMerger;
    mergerCompletionBlock: aMergerCompletionBlock;
    mergerAbortBlock: aMergerAbortBlock;
    mergeTool: self.
  self mergerNode: self createMergerNode.
  topez := self topez spawnWindow.
  topez currentNode: self mergerNode.
  mergeWindowId := self merger
    editUsing: (TDEditorSpec topez: topez editorAspect: #'merge')