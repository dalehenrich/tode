as yet unclassified
selectClassNamed: className topez: topez
  (Smalltalk classNamed: className)
    ifNil: [ 
      TDPackageList current
        selectedIndex: 0;
        editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList').
      TDConfigurationList current
        selectedIndex: 0;
        editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList') ]
    ifNotNil: [ :cls | self updatePackageAndConfigFor: cls category topez: topez ]