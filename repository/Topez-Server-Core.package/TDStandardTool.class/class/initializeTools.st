as yet unclassified
initializeTools
  "self initializeTools"

  | topez initializationOrder |
  topez := TDTopezServer for: 0.
  topez
    ifNil: [ 
      "this can happen during the initial install and is cool ..."
      ^ nil ].
  initializationOrder := OrderedCollection new.
  self allSubclasses
    do: [ :cl | 
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