private
childMapForComposition: forComposition
  | children |
  children := Dictionary new.
  self entryList reversed
    do: [ :entry | 
      entry
        childrenDo: [ :childNode | 
          "skip  leaf nodes"
          childNode isLeaf
            ifFalse: [ 
              | projectEntry value |
              "compose childNodes by projectEntry projectName"
              projectEntry := childNode dotSelfObject.
              value := forComposition
                ifTrue: [ entry -> childNode ]
                ifFalse: [ childNode ].
              children at: projectEntry projectName put: value ] ] ].
  ^ children