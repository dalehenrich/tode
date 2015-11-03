as yet unclassified
gitdifftool: source destination: destination cached: cached filePath: filePath gitRepoDirectory: gitRepoDirectory diffClass: diffClass
  | result records diffs cachedArg |
  cachedArg := ''.
  cached
    ifTrue: [ cachedArg := '--cached ' ].
  result := self
    performGitCommand: 'diff'
    in: gitRepoDirectory
    with: cachedArg , '--raw ' , source , ' ' , destination , ' -- ' , filePath
    logging: false.
  records := self parseRawDiffFiles: result.
  records := records
    reject: [ :ar | 
      | operations op |
      "ignore unmerged records for diff"
      operations := ar at: 5.
      op := operations at: 1.
      op = 'U' ].
  records isEmpty
    ifTrue: [ ^ #() ].
  diffs := records
    collect: [ :ar | 
      | diff operations path op |
      operations := ar at: 5.
      operations size < 2
        ifTrue: [ path := operations at: 1 ]
        ifFalse: [ path := operations at: 2 ].
      op := operations at: 1.
      diff := diffClass new
        baseDirectory: gitRepoDirectory;
        filePath: path;
        editOp: op;
        yourself.
      op = 'M'
        ifTrue: [ 
          | sha |
          diff
            source:
              (self gitFileContents: (ar at: 3) gitRepoDirectory: gitRepoDirectory).
          sha := ar at: 4.
          sha = '0000000...'
            ifTrue: [ 
              diff
                destination:
                  (self
                    gitFileContentsFromDisk: (operations at: 2)
                    gitRepoDirectory: gitRepoDirectory) ]
            ifFalse: [ diff destination: (self gitFileContents: sha gitRepoDirectory: gitRepoDirectory) ] ]
        ifFalse: [ 
          op = 'D'
            ifTrue: [ 
              diff
                source:
                  (self gitFileContents: (ar at: 3) gitRepoDirectory: gitRepoDirectory) ]
            ifFalse: [ 
              op = 'A'
                ifTrue: [ 
                  diff
                    destination:
                      (self gitFileContents: (ar at: 4) gitRepoDirectory: gitRepoDirectory) ]
                ifFalse: [ Error signal: 'Unknown diff op: ' , op printString ] ] ] ].
  ^ diffs