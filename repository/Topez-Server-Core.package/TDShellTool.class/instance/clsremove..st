cls
clsremove: theClass
  | refs |
  refs := self findReferences: theClass name.
  theClass removeFromSystem
    ifFalse: [ 
      "class not removed from system ... likely to be subclasses"
      self
        error:
          'The class ' , theClass name
            ,
              ' was not removed from the system ... most likely there are subclasses of the class or the class was not found in your symbol list.' ].
  self topez resetAllGlobalNames.
  refs isEmpty
    ifFalse: [ self browseMethodsBlock: [ refs ] label: 'References to class ' , theClass name ].
  ^ true