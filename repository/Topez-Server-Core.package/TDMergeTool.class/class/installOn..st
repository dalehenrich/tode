as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer ensureChildrenExistIn: self commandPath.
  super installOn: aTDTopezServer.
  TDTopezServer
    registerEditorClass: TDMergerClientListElementBuilder
      for: TDMerger
      aspect: #'merge';
    registerEditorClass: TDMergerClientListElementBuilder
      for: TDGitMerger
      aspect: #'merge';
    registerEditorClass: TDDiffClientListElementBuilder
      for: TDGitDiffer
      aspect: #'diff';
    registerEditorClass: TDClientMergeOperationSourceElementBuilder
      for: TDMergeOperation
      aspect: #'edit'