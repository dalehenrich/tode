initialization
merger: aTDMerger mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  merger := aTDMerger
    mergerCompletionBlock: [ aMergerCompletionBlock value ];
    mergerAbortBlock: aMergerAbortBlock;
    yourself