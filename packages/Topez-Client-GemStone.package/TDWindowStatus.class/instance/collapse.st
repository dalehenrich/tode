accessing
collapse
  (windows select: [ :each | each notNil ])
    do: [ :window | 
      (window model isKindOf: TodeEditor)
        ifTrue: [ window collapse ] ]