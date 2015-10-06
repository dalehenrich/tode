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
  (Smalltalk at: #'World') perform: #'closeAllWindowsDiscardingChanges'.	"close all windows"
  (Smalltalk at: #'PolymorphSystemSettings')
    perform: #'desktopLogoFileName:'
    with:
      (((Smalltalk at: #'FileSystem') perform: #'workingDirectory')
        / 'GemTalkSystemsLogo.png') pathString.
  (Smalltalk at: #'TaskbarMorph') perform: #'showTaskbar:' with: false.
  (Smalltalk at: #'NECPreferences') perform: #'enabled:' with: false.
  Smalltalk at: #'TODE_CLIENT_INSTALLED' put: true.
  (Smalltalk at: #'TDShell') perform: #'resetWorldMenu'.
  (Smalltalk at: #'FreeTypeFontProvider') current perform: #'updateFromSystem'.
  monoFontName := 'Courier New'.	"Windows"
  (Smalltalk os perform: #'isUnix')
    ifTrue: [ monoFontName := 'DejaVu Sans Mono' ]
    ifFalse: [ 
      (Smalltalk os perform: #'isMacOSX')
        ifTrue: [ monoFontName := 'Monaco' ]
        ifFalse: [ 
          "Windows"
          monoFontName := 'Consolas' ] ].
  (Smalltalk at: #'StandardFonts')
    defaultFont:
      ((Smalltalk at: #'LogicalFont')
        parform: #'familyName:pointSize:'
        with: monoFontName
        with: 8).
  (Smalltalk at: #'StandardFonts')
    perform: #'setAllStandardFontsTo:'
    with: ((Smalltalk at: #'StandardFonts') perform: #'defaultFont').
  windowProperties := (Smalltalk at: #'TDAbstractWindowProperties')
    import: 'jigsaw-medium'.
  windowProperties installOn: (Smalltalk at: #'TDTopezGemStoneClient').
  bounds := windowProperties perform: #'caculateWindowBounds' at: #'transcript'.
  (Smalltalk at: #'TDShell') perform: #'resizeTranscript:' with: bounds