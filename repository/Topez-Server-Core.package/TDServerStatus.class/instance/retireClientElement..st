as yet unclassified
retireClientElement: aClientElement
  self elementCache remove: aClientElement ifAbsent: [  ].
  self persistentElementCache remove: aClientElement ifAbsent: [  ]