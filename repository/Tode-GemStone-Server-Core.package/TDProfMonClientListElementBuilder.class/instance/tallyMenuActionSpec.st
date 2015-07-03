menu action specs
tallyMenuActionSpec
  | spec |
  spec := {#('sort by tally' nil #'sortByTallyMenuAction:').
  #('sort by total' nil #'sortByTotalMenuAction:')}.
  self object objectCreationTally
    ifTrue: [ spec := spec , {#('sort by class' nil #'sortByClassMenuAction:')} ].
  ^ spec