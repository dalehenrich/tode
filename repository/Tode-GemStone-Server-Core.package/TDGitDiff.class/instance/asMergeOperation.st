converting
asMergeOperation
  | us ancestor stage view |
  ancestor := source.
  us := destination.
  view := #'ancestorVsUs'.
  editOp = 'A'
    ifTrue: [ stage := #'added' ]
    ifFalse: [ 
      editOp = 'D'
        ifTrue: [ stage := #'deleted' ]
        ifFalse: [ 
          editOp = 'M'
            ifTrue: [ stage := #'modified' ]
            ifFalse: [ 
              editOp = 'U'
                ifTrue: [ 
                  "unmerged ... shouldn't see this"
                  self error: 'Unexpected edit operation: ' , editOp printString ]
                ifFalse: [ self error: 'Unknown edit operation: ' , editOp printString ] ] ] ].
  ^ TDGitMergeOperation new
    baseDirectory: self baseDirectory;
    filePath: self filePath;
    us: us;
    ancestor: ancestor;
    them: nil;
    stage: stage;
    view: view;
    resolved: true;
    yourself