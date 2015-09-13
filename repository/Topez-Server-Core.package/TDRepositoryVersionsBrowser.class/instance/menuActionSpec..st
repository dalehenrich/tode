tools
menuActionSpec: miniTool
  | theSpec |
  theMiniTool := miniTool.
  theSpec := {#('copy to repository' nil #'copyToRepository:selectedIndex:').
  #('-')}.
  self workingCopy
    ifNotNil: [ 
      theSpec := theSpec
        ,
          {#('adopt' nil #'adoptVersion:selectedIndex:').
          #('> changes' nil #'versionChanges:selectedIndex:').
          #('< changes' nil #'versionChangesReversed:selectedIndex:').
          #('merge' nil #'mergeVersion:selectedIndex:').
          #('-')} ].
  ^ theSpec
    ,
      {#('browse' nil #'browseVersion:selectedIndex:').
      #('history' nil #'versionHistory:selectedIndex:').
      #('load' nil #'loadVersion:selectedIndex:').
      #('-')}
    , self standardMenuActionSpec