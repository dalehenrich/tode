accessing
createOperationsList
  ^ (self merger conflicts
    collect: [ :conflict | 
      TDMergeConflict new
        conflict: conflict;
        merger: self;
        yourself ])
    ,
      (self merger operations
        collect: [ :operation | 
          TDMergePatchOperation new
            operation: operation;
            merger: self;
            yourself ])