as yet unclassified
currentWindowId: anInteger
  ^ (self windowStatus windowAt: anInteger)
    ifNotNil: [ :window | 
      window isActive
        ifFalse: [ 
          window
            expand;
            makeSecondTopmost ].
      window ]