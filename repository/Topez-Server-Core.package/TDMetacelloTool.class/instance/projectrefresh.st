project
projectrefresh
  "
  project refresh ( [--locked] [--loaded] ) | ( [--all] )
"

  | refreshSpec |
  self
    getSubcommandOptsMixedLongShort:
      {#('all' nil #'none').
      #('loaded' nil #'none').
      #('locked' nil #'none')}.
  refreshSpec := {}.
  subOptions
    at: 'all'
    ifPresent: [ :ignored | refreshSpec := #(#'loaded' #'unloaded' #'locked' #'unlocked') ]
    ifAbsent: [ 
      subOptions
        at: 'loaded'
        ifPresent: [ :ignored | refreshSpec add: #'loaded' ]
        ifAbsent: [ refreshSpec add: #'unloaded' ].
      subOptions
        at: 'locked'
        ifPresent: [ :ignored | refreshSpec add: #'locked' ]
        ifAbsent: [ refreshSpec add: #'unlocked' ] ].
  ^ self projectRefresh: refreshSpec