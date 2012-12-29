accessing
close
  (windows select: [ :each | each notNil ])
    do: [ :window | 
      (window model isKindOf: TodeEditor)
        ifTrue: [ 
          window model windowIsClosing.
          window delete ] ]