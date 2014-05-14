menu actions
revertProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration loads |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  [ registration loadProjectUsing: projectTool ]
    on: MetacelloIgnorePackageLoaded , MetacelloSkipDirtyPackageLoad , Warning
    do: [ :ex | 
      "force load of modified packages"
      (ex isKindOf: Warning)
        ifTrue: [ ex resume ].
      (ex isKindOf: MetacelloSkipDirtyPackageLoad)
        ifTrue: [ ex resume: false ].
      ex resume: ex packageSpec workingCopy modified ].
  ^ #'refreshList'