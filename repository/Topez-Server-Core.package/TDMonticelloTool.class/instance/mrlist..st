as yet unclassified
mrlist: pattern
  | list repos |
  list := self findMatchingRepositories: pattern topez: topez.
  repos := list collect: [ :each | each repository ].
  ^ repos sort: [ :a :b | a description < b description ]