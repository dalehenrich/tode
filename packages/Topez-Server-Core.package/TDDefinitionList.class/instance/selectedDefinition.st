as yet unclassified
selectedDefinition
  self selectedIndex == 0
    ifTrue: [ ^ nil ].
  ^ self definitionList at: self selectedIndex