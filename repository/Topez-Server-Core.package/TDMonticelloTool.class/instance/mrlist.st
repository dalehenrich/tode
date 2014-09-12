as yet unclassified
mrlist
  "mr list [<regex-repo-pattern>]"

  | pattern label repositoryBlock |
  label := 'Repositories'.
  tokens size > 1
    ifTrue: [ 
      pattern := tokens at: 2.
      label := 'Repositories matching: ' , pattern printString ].
  repositoryBlock := [ self mrlist: pattern ].
  self mrBrowseRepositories: repositoryBlock label: label.
  ^ repositoryBlock value