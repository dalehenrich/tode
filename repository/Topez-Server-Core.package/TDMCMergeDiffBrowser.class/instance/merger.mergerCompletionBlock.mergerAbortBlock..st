initialization
merger: aTDMerger mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  selectedOperations := Set new.
  aTDMerger mergeTool: self.
  merger := aTDMerger
    mergerCompletionBlock: [ aMergerCompletionBlock value ];
    mergerAbortBlock: aMergerAbortBlock;
    yourself