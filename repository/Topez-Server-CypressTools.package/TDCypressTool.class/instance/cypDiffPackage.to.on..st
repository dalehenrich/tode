as yet unclassified
cypDiffPackage: packageName to: cypressRepository on: stream
  | package packageStructure patch |
  package := CypressPackageDefinition named: packageName.
  packageStructure := CypressPackageStructure fromPackage: package.
  [ 
  patch := packageStructure snapshot
    patchRelativeToBase:
      (cypressRepository readPackageStructureForPackageNamed: packageName) snapshot ]
    on: CompileWarning
    do: [ :ex | ex resume ].
  patch isEmpty
    ifTrue: [ self markWorkingCopyFor: packageName modified: false ]
    ifFalse: [ 
      | diffy |
      stream
        nextPutAll:
            ('==================== ' , packageName , ' ====================') asText allBold;
        cr.
      diffy := MCDiffyTextWriter on: stream.
      diffy writePatch: patch.
      stream cr ].
  ^ patch