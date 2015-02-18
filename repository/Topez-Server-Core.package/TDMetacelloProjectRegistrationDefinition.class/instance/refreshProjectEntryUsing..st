actions
refreshProjectEntryUsing: refreshSpec
  "force registration to be unregistered (and project entry to be reloaded) depending upon
   symbols in <refreshSpec>:
      #'loaded',  #'unloaded',  #'locked', and/or #'unlocked'
"

  self isLoadedInImage
    ifTrue: [ 
      (refreshSpec includes: #'loaded')
        ifFalse: [ ^ false ] ]
    ifFalse: [ 
      (refreshSpec includes: #'unloaded')
        ifFalse: [ ^ false ] ].
  self isLocked
    ifTrue: [ 
      (refreshSpec includes: #'locked')
        ifFalse: [ ^ false ] ]
    ifFalse: [ 
      (refreshSpec includes: #'unlocked')
        ifFalse: [ ^ false ] ].
  self unregister.
  ^ true