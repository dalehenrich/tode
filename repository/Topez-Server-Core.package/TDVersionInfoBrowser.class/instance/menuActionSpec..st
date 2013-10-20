tools
menuActionSpec: miniTool
  | spec |
  theMiniTool := miniTool.
  spec := #().
  workingCopy
    ifNotNil: [ 
      spec := spec
        ,
          {#('diff vs workingCopy' nil #'versionInfoDiffVsWorkingCopy:selectedIndex:')} ].
  ^ spec
    ,
      {#('select' nil #'versionInfoSelect:selectedIndex:').
      #('diff vs selection' nil #'versionInfoDiffVsSelection:selectedIndex:').
      #('-')}
    , self standardMenuActionSpec