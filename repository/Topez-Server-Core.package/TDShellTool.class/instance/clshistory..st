cls
clshistory: theClass
  | classes defs |
  classes := {theClass}.
  theClass
    ifNil: [ 
      classes := GsDeployer new
        excluding: #();
        classesWithClassHistory ].
  defs := OrderedCollection new.
  classes
    do: [ :cls | 
      defs
        addAll:
          (cls classHistory
            withIndexCollect: [ :cls :index | TDClassHistoryDefinition className: cls name classHistoryIndex: index ]) ].
  ^ defs