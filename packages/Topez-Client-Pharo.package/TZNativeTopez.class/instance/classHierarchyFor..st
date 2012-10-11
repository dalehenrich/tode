coding
classHierarchyFor: classProxy
    ^ self doInSession: [ :sess | sess classHierarchyFor: classProxy ]