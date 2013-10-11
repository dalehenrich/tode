as yet unclassified
selectClassNamed: className topez: topez
  (Smalltalk classNamed: className)
    ifNil: [ 
      true
        ifTrue: [ self updateClassCategoryFor: nil topez: topez ]
        ifFalse: [ 
          TDPackageList current
            selectedIndex: 0;
            editUsing:
                (TDEditorSpec topez: topez editorAspect: #'definitionList').
          TDConfigurationList current
            selectedIndex: 0;
            editUsing:
                (TDEditorSpec topez: topez editorAspect: #'definitionList') ] ]
    ifNotNil: [ :cls | 
      true
        ifTrue: [ ^ self updateClassCategoryFor: cls category topez: topez ]
        ifFalse: [ self updatePackageAndConfigFor: cls category topez: topez ] ]