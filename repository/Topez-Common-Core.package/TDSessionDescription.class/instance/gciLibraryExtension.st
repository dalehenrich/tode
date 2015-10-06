accessing
gciLibraryExtension
  (Smalltalk at: #'GciLibrary') isOnLinux
    ifTrue: [ ^ '.so' ].
  (Smalltalk at: #'GciLibrary') isOnMacintosh
    ifTrue: [ ^ '.dylib' ].
  (Smalltalk at: #'GciLibrary') isOnWindows
    ifTrue: [ ^ '.dll' ].
  self error: 'Unknown OS platform'