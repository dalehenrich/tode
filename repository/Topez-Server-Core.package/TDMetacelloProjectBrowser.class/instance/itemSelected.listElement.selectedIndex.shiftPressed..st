tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | gitSelector registration skewSelector loadedSelector |
  index == 0
    ifTrue: [ ^ false ].
  loadedSelector := skewSelector := gitSelector := #'clearMenuCategory:'.
  registration := self projects at: index.
  registration hasVersionSkew
    ifTrue: [ skewSelector := #'setMenuCategory:' ].
  registration isLoadedInImage
    ifTrue: [ loadedSelector := #'setMenuCategory:' ].
  (self hasGitRepository: registration)
    ifTrue: [ gitSelector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {gitSelector.
      #'gitProject'.
      loadedSelector.
      #'loadedProject'.
      skewSelector.
      #'versionSkew'.
      #'setMenuCategory:'.
      #'project'}