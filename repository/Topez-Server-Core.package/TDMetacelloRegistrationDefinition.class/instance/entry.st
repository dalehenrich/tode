accessing
entry
  entry
    ifNil: [ 
      ^ TDProjectSpecEntryDefinition new
        projectSpec: self projectSpec;
        locked: self isLocked;
        yourself ].
  ^ entry