as yet unclassified
argAndTempNames
    argAndTempNames ifNil: [ argAndTempNames := (self frameContents at: 9) collect: [ :each | each asString ] ].
    ^ argAndTempNames