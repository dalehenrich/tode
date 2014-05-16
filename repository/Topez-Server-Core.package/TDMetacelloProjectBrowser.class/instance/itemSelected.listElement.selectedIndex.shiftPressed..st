tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | gitSelector registration skewSelector loadedSelector projectSelector repoSelector writableRepoSelector dirtyProjectSelector |
  index == 0
    ifTrue: [ ^ false ].
  dirtyProjectSelector := writableRepoSelector := repoSelector := projectSelector := loadedSelector := skewSelector := gitSelector := #'clearMenuCategory:'.
  registration := self projects at: index.
  registration hasVersionSkew
    ifTrue: [ skewSelector := #'setMenuCategory:' ].
  (registration isLoadedInImage or: [ registration isExternalGitProject ])
    ifTrue: [ 
      registration isLoadedInImage
        ifTrue: [ 
          registration isDirty
            ifTrue: [ dirtyProjectSelector := #'setMenuCategory:' ].
          loadedSelector := #'setMenuCategory:' ].
      (registration isMetacelloProject or: [ registration hasGitRepository ])
        ifTrue: [ 
          repoSelector := #'setMenuCategory:'.
          registration hasGithubRepo
            ifFalse: [ writableRepoSelector := #'setMenuCategory:' ] ] ].
  registration hasGitRepository
    ifTrue: [ gitSelector := #'setMenuCategory:' ].
  registration isMetacelloProject
    ifTrue: [ projectSelector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {dirtyProjectSelector.
      #'dirtyProject'.
      writableRepoSelector.
      #'writableRepoBasedProject'.
      repoSelector.
      #'repoBasedProject'.
      gitSelector.
      #'gitProject'.
      loadedSelector.
      #'loadedProject'.
      skewSelector.
      #'versionSkew'.
      projectSelector.
      #'project'}