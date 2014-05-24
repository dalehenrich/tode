accessing
entry
  entry
    ifNil: [ 
      ^ TDProjectSpecEntryDefinition new
        projectSpec: self projectSpec;
        yourself ].
  ^ entry