tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | gitSelector registration skewSelector loadedSelector projectSelector repoSelector |
  index == 0
    ifTrue: [ ^ false ].
  repoSelector := projectSelector := loadedSelector := skewSelector := gitSelector := #'clearMenuCategory:'.
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
    ifTrue: [ repoSelector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {repoSelector.
      #'repoBasedProject'.
      gitSelector.
      #'gitProject'.
      loadedSelector.
      #'loadedProject'.
      skewSelector.
      #'versionSkew'.
      projectSelector.
      #'project'}