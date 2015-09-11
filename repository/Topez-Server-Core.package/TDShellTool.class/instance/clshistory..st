cls
clshistory: theClass
  | classes defs |
  theClass
    ifNotNil: [ classes := {theClass} ]
    ifNil: [ classes := self clsClassesWithClassHistory ].
  defs := OrderedCollection new.
  classes
    do: [ :cls | 
      defs
        addAll:
          (cls classHistory
            withIndexCollect: [ :cls :index | TDClassHistoryDefinition className: cls name classHistoryIndex: index ]) ].
  ^ defs