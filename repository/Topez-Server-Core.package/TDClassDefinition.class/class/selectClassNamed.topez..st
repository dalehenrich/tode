as yet unclassified
selectClassNamed: className topez: topez
  (Smalltalk classNamed: className)
    ifNil: [ 
      true
        ifTrue: [ self updateClassCategoryFor: nil topez: topez ]
        ifFalse: [ 
          | browseTool |
          browseTool := topez toolInstanceFor: 'browse'.
          browseTool
            browsePackages;
            browseConfigurations ] ]
    ifNotNil: [ :cls | 
      true
        ifTrue: [ ^ self updateClassCategoryFor: cls category topez: topez ]
        ifFalse: [ self updatePackageAndConfigFor: cls category topez: topez ] ]