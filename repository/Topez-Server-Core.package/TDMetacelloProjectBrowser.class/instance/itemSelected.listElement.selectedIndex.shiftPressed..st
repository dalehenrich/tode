tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | gitSelector registration |
  index == 0
    ifTrue: [ ^ false ].
  gitSelector := #'clearMenuCategory:'.
  registration := self projects at: index.
  (self hasGitRepository: registration)
    ifTrue: [ gitSelector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {gitSelector.
      #'gitProjectSelected'.
      #'setMenuCategory:'.
      #'projectSelected'}