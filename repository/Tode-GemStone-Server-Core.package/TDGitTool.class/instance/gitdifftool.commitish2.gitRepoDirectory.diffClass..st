as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory diffClass: diffClass
  | result records diffs |
  result := self
    performGitCommand: 'diff'
    in: gitRepoDirectory
    with: '--raw ' , commitish1 , ' ' , commitish2
    logging: false.
  (result beginsWith: 'fatal:')
    ifTrue: [ self error: 'Error performing diff: ' , result printString ].
  records := self parseRawDiffFiles: result.
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
            local:
              (self gitFileContents: (ar at: 3) gitRepoDirectory: gitRepoDirectory).
          sha := ar at: 4.
          sha = '0000000...'
            ifTrue: [ 
              diff
                remote:
                  (self
                    gitFileContentsFromDisk: (operations at: 2)
                    gitRepoDirectory: gitRepoDirectory) ]
            ifFalse: [ diff remote: (self gitFileContents: sha gitRepoDirectory: gitRepoDirectory) ] ]
        ifFalse: [ 
          op = 'D'
            ifTrue: [ 
              diff
                local:
                  (self gitFileContents: (ar at: 3) gitRepoDirectory: gitRepoDirectory) ]
            ifFalse: [ 
              op = 'A'
                ifTrue: [ 
                  diff
                    remote:
                      (self gitFileContents: (ar at: 4) gitRepoDirectory: gitRepoDirectory) ]
                ifFalse: [ Error signal: 'Unknown diff op: ' , op printString ] ] ] ].
  ^ diffs