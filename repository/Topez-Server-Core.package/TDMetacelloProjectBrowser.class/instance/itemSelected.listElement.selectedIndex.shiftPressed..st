tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | gitSelector registration skewSelector |
  index == 0
    ifTrue: [ ^ false ].
  skewSelector := gitSelector := #'clearMenuCategory:'.
  registration := self projects at: index.
  registration hasVersionSkew
    ifTrue: [ skewSelector := #'setMenuCategory:' ].
  (self hasGitRepository: registration)
    ifTrue: [ gitSelector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {gitSelector.
      #'gitProjectSelected'.
      skewSelector.
      #'versionSkew'.
      #'setMenuCategory:'.
      #'projectSelected'}