as yet unclassified
resolveFilterSpec: filterSpec
  ^ (filterSpec beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: filterSpec ]
    ifFalse: [ self topez todeEnvironment evaluate: filterSpec ]