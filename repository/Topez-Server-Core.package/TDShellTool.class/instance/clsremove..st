cls
clsremove: theClass
  | refs |
  refs := self findReferences: theClass name.
  theClass removeFromSystem.
  self topez resetAllGlobalNames.
  refs isEmpty
    ifFalse: [ self browseMethodsBlock: [ refs ] label: 'References to class ' , theClass name ].
  ^ true