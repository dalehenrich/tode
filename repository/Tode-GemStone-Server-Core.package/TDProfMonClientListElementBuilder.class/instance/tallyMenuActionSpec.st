menu action specs
tallyMenuActionSpec
  ^ self object objectCreationTally
    ifTrue: [ 
      {#('sort by class tally' nil #'sortByClassTallyMenuAction:').
      #('sort by class name' nil #'sortByClassNameMenuAction:')} ]
    ifFalse: [ 
      {#('sort by tally' nil #'sortByTallyMenuAction:').
      #('sort by total' nil #'sortByTotalMenuAction:')} ]