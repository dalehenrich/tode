initialization
pharo30InstallFullTodeClient
  | monoFontName windowProperties bounds |
  Smalltalk at: #'TODE_CLIENT_INSTALLED' ifPresent: [ ^ self ].
  Smalltalk os environment
    at: 'GS_HOME'
    ifAbsent: [ 
      "Cannot initialize correctly if $GS_HOME is not defined correctly"
      ^ self ].
  self pharo30InstallTodeClient.
  (Smalltalk at: #'World') closeAllWindowsDiscardingChanges.	"close all windows"
  (Smalltalk at: #'PolymorphSystemSettings')
    perform: #'desktopLogoFileName:'
    with:
      ((Smalltalk at: #'FileSystem') workingDirectory / 'GemTalkSystemsLogo.png')
        pathString.
  (Smalltalk at: #'TaskbarMorph') perform: #'showTaskbar:' with: false.
  (Smalltalk at: #'NECPreferences') perform: #'enabled:' with: false.
  Smalltalk at: #'TODE_CLIENT_INSTALLED' put: true.
  (Smalltalk at: #'TDShell') resetWorldMenu.
  (Smalltalk at: #'FreeTypeFontProvider') current updateFromSystem.
  monoFontName := 'Courier New'.	"Windows"
  Smalltalk os isUnix
    ifTrue: [ monoFontName := 'DejaVu Sans Mono' ]
    ifFalse: [ 
      Smalltalk os isMacOSX
        ifTrue: [ monoFontName := 'Monaco' ]
        ifFalse: [ 
          "Windows"
          monoFontName := 'Consolas' ] ].
  (Smalltalk at: #'StandardFonts')
    defaultFont:
      ((Smalltalk at: #'LogicalFont') familyName: monoFontName pointSize: 8).
  (Smalltalk at: #'StandardFonts')
    setAllStandardFontsTo: (Smalltalk at: #'StandardFonts') defaultFont.
  windowProperties := (Smalltalk at: #'TDAbstractWindowProperties')
    import: 'jigsaw-medium'.
  windowProperties installOn: (Smalltalk at: #'TDTopezGemStoneClient').
  bounds := windowProperties caculateWindowBounds at: #'transcript'.
  (Smalltalk at: #'TDShell') resizeTranscript: bounds