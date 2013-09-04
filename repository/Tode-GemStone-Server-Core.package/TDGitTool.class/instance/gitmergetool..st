as yet unclassified
gitmergetool: gitRepoDirectory
  | result dictionary sourceDictionary |
  result := self
    performGitCommand: 'ls-files'
    in: gitRepoDirectory
    with: '-u'
    logging: false.
  dictionary := self parseLsFiles: result.
  dictionary isEmpty
    ifTrue: [ ^ 'No conflicts' ].
  sourceDictionary := Dictionary new.
  dictionary keys
    do: [ :path | 
      gitRepoDirectory
        fileNamed: path
        do: [ :fileStream | 
          | triplet |
          triplet := self parseSourceConflictsOn: fileStream.
          sourceDictionary at: path put: triplet ] ].
  self halt