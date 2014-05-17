tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | registration enabled disabled enable |
  index == 0
    ifTrue: [ ^ false ].
  registration := self projects at: index.
  enabled := {}.
  disabled := {#'dirtyProject'.
  #'versionSkew'.
  #'loadedProject'.
  #'repoBasedProject'.
  #'writableRepoBasedProject'.
  #'gitProject'.
  #'project'.
  #'configurationProject'.
  #'githubProject'}.
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
            ifFalse: [ enable value: #'writableRepoBasedProject' ].
          registration isConfigurationBased
            ifTrue: [ enable value: #'configurationProject' ] ] ].
  registration hasGitRepository
    ifTrue: [ enable value: #'gitProject' ].
  registration isMetacelloProject
    ifTrue: [ enable value: #'project' ].
  ^ STON
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}