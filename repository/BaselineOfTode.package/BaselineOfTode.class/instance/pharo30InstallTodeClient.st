initialization
pharo30InstallTodeClient
  | gsDevKitHome monoFontName windowProperties bounds |
  Smalltalk at: #'TODE_CLIENT_INSTALLED' ifPresent: [ ^ self ].
  gsDevKitHome := (Smalltalk at: #'FileSystem') workingDirectory parent.
  Deprecation
    showWarning: false;
    raiseWarning: false.
  (Smalltalk at: #'World') closeAllWindowsDiscardingChanges.	"close all windows"
  (Smalltalk at: #'TDShell')
    perform: #'devKitRoot:'
    with: gsDevKitHome pathString.
  (Smalltalk at: #'PolymorphSystemSettings')
    perform: #'desktopLogoFileName:'
    with: (gsDevKitHome / 'pharo' / 'GemTalkSystemsLogo.png') pathString.
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
        ifTrue: [ monoFontName := 'Monaco' ] ].
  (Smalltalk at: #'StandardFonts')
    defaultFont:
      ((Smalltalk at: #'LogicalFont') familyName: monoFontName pointSize: 8).
  (Smalltalk at: #'StandardFonts')
    setAllStandardFontsTo: (Smalltalk at: #'StandardFonts') defaultFont.
  windowProperties := (Smalltalk at: #'TDAbstractWindowProperties')
    import: 'standard-small'.
  windowProperties installOn: (Smalltalk at: #'TDTopezGemStoneClient').
  bounds := windowProperties caculateWindowBounds at: #'transcript'.
  (Smalltalk at: #'TDShell') resizeTranscript: bounds