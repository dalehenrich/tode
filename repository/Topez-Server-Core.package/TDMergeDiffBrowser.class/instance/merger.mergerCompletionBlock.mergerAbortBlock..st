initialization
merger: aTDMerger mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  aTDMerger mergeTool: self.
  merger := aTDMerger
    mergerCompletionBlock: [ aMergerCompletionBlock value ];
    mergerAbortBlock: aMergerAbortBlock;
    yourself