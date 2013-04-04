as yet unclassified
initialize
  "self initialize"

  | topez initializationOrder |
  topez := TDTopezServer for: 0.
  initializationOrder := OrderedCollection new.
  TDAbstractDevTool allSubclasses
    do: [ :cl | 
      | pragma |
      (Pragma allNamed: #'topezCommandPriority' in: cl class)
        do: [ :pragma | initializationOrder add: (cl perform: pragma selector) -> cl ] ].
  (initializationOrder sort: [ :a :b | a key <= b key ])
    do: [ :assoc | 
      | cl |
      cl := assoc value.
      cl installOn: topez ].
  (topez lookup: self basePath)
    readMe: self basePathReadMe;
    yourself.
  self installMasterTestSpecOn: topez