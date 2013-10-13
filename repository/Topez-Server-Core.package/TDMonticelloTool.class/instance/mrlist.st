as yet unclassified
mrlist
  "mr list [<regex-repo-pattern>]"

  | pattern list repos label |
  label := 'Repositories'.
  tokens size > 1
    ifTrue: [ 
      pattern := tokens at: 2.
      label := 'Repositories matching: ' , pattern printString ].
  list := self findMatchingRepositories: pattern topez: topez.
  repos := list collect: [ :each | each repository ].
  repos := repos sort: [ :a :b | a description < b description ].
  self mrBrowseRepositories: repos label: label.
  ^ list