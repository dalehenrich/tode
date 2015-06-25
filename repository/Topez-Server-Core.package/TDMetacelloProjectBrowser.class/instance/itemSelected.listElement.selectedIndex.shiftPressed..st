tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | registration enabled disabled enable |
  selectedProjectName := nil.
  (index == 0 or: [ index > self projects size ])
    ifTrue: [ ^ false ].
  registration := self projects at: index.
  selectedProjectName := registration projectName.
  enabled := {}.
  disabled := {#'dirtyProject'.
  #'versionSkew'.
  #'loadedProject'.
  #'unloadedProject'.
  #'repoBasedProject'.
  #'writableRepoBasedProject'.
  #'loggableProject'.
  #'gitProject'.
  #'project'.
  #'metacelloProject'.
  #'configurationProject'.
  #'gitBasedProject'.
  #'baselineProject'.
  #'nonDirtyGitProject'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ifAbsent: [  ] ].
  registration hasVersionSkew
    ifTrue: [ enable value: #'versionSkew' ].
  registration hasGitBasedRepo
    ifTrue: [ enable value: #'gitBasedProject' ].
  (registration isLoadedInImage or: [ registration isExternalGitProject ])
    ifTrue: [ 
      registration isLoadedInImage
        ifTrue: [ 
          registration isDirty
            ifTrue: [ enable value: #'dirtyProject' ].
          enable value: #'loadedProject' ].
      (registration isMetacelloProject or: [ registration hasGitRepository ])
        ifTrue: [ 
          enable value: #'repoBasedProject'.
          registration hasGitBasedRepo
            ifFalse: [ 
              enable
                value: #'writableRepoBasedProject';
                value: #'loggableProject' ] ] ]
    ifFalse: [ 
      registration isExternalGitProject
        ifFalse: [ enable value: #'unloadedProject' ] ].
  registration hasGitRepository
    ifTrue: [ 
      enable
        value: #'gitProject';
        value: #'loggableProject'.
      registration isDirty
        ifFalse: [ enable value: #'nonDirtyGitProject' ] ].
  registration isMetacelloProject
    ifTrue: [ enable value: #'metacelloProject' ].
  (registration isBaselineBased or: [ registration isHybridBased ])
    ifTrue: [ enable value: #'baselineProject' ].
  (registration isConfigurationBased or: [ registration isHybridBased ])
    ifTrue: [ enable value: #'configurationProject' ].
  enable value: #'project'.
  ^ self objectSerializer
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}