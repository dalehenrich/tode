| dict configs methodDefs stream |
dict := Dictionary new.
configs := #('GsCore' 'GsMonticello' 'Metacello' 'GsMisc' 'Grease' 'FileTree' 'Ston' 'Topez' 'Gofer Tests' 'RB').
methodDefs := Array new.
(objIn reject: [ :methodDef | methodDef isMeta not ])
  do: [ :methodDef | 
    | config defs |
    config := methodDef configurationOf.
    config ~~ nil
      ifTrue: [ 
        defs := dict
          at: config configurationName
          ifAbsent: [ dict at: config configurationName put: Array new ].
        defs add: methodDef ] ].
configs
  do: [ :configName | 
    | defs "we blocks of methods ordered by configuration and sorted in class order within the block" orderedDefs |
    defs := dict at: configName ifAbsent: [ #() ].
    orderedDefs := TDClassDefinition classHierarchyOrder: defs.
    methodDefs addAll: orderedDefs ].
true
  ifTrue: [ methodDefs copy ]
  ifFalse: [ 
    methodDefs
      edit: nil
      topez: topez
      aspect: #'methodDefinitionList'
      windowName: nil
      windowId: nil
      windowLocation: #'implementors' ].
stream := WriteStream on: String new.
methodDefs
  do: [ :methodDef | 
    stream
      nextPutAll: methodDef className;
      space;
      nextPutAll: methodDef selector , '.';
      cr ].
stream contents edit: topez aspect: #'browse'

