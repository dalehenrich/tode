tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | gitSelector registration skewSelector loadedSelector projectSelector repoSelector writableRepoSelector |
  index == 0
    ifTrue: [ ^ false ].
  writableRepoSelector := repoSelector := projectSelector := loadedSelector := skewSelector := gitSelector := #'clearMenuCategory:'.
  registration := self projects at: index.
  registration hasVersionSkew
    ifTrue: [ skewSelector := #'setMenuCategory:' ].
  registration isLoadedInImage
    ifTrue: [ loadedSelector := #'setMenuCategory:' ].
  registration hasGitRepository
    ifTrue: [ gitSelector := #'setMenuCategory:' ].
  registration isMetacelloProject
    ifTrue: [ projectSelector := #'setMenuCategory:' ].
  (registration isMetacelloProject or: [ registration hasGitRepository ])
    ifTrue: [ 
      repoSelector := #'setMenuCategory:'.
      registration hasGithubRepo
        ifFalse: [ writableRepoSelector := #'setMenuCategory:' ] ].
  ^ STON
    toString:
      {writableRepoSelector.
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