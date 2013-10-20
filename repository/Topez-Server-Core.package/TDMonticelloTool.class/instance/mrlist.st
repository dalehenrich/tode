as yet unclassified
mrlist
  "mr list [<regex-repo-pattern>]"

  | pattern label repositoryBlock |
  label := 'Repositories'.
  tokens size > 1
    ifTrue: [ 
      pattern := tokens at: 2.
      label := 'Repositories matching: ' , pattern printString ].
  repositoryBlock := [ 
  | list repos |
  list := self findMatchingRepositories: pattern topez: topez.
  repos := list collect: [ :each | each repository ].
  repos sort: [ :a :b | a description < b description ] ].
  self mrBrowseRepositories: repositoryBlock label: label.
  ^ repositoryBlock value