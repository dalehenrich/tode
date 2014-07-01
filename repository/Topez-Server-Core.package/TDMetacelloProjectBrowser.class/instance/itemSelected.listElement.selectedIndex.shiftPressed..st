tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | registration enabled disabled enable |
  selectedProjectName := nil.
  index == 0
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
  #'gitProject'.
  #'project'.
  #'metacelloProject'.
  #'configurationProject'.
  #'githubProject'.
  #'baselineProject'.
  #'nonDirtyGitProject'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  registration hasVersionSkew
    ifTrue: [ enable value: #'versionSkew' ].
  registration hasGithubRepo
    ifTrue: [ enable value: #'githubProject' ].
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
          registration hasGithubRepo
            ifFalse: [ enable value: #'writableRepoBasedProject' ] ] ]
    ifFalse: [ 
      registration isExternalGitProject
        ifFalse: [ enable value: #'unloadedProject' ] ].
  registration hasGitRepository
    ifTrue: [ 
      enable value: #'gitProject'.
      registration isDirty
        ifFalse: [ enable value: #'nonDirtyGitProject' ] ].
  registration isMetacelloProject
    ifTrue: [ enable value: #'metacelloProject' ].
  (registration isBaselineBased or: [ registration isHybridBased ])
    ifTrue: [ enable value: #'baselineProject' ].
  (registration isConfigurationBased or: [ registration isHybridBased ])
    ifTrue: [ enable value: #'configurationProject' ].
  enable value: #'project'.
  ^ STON
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}