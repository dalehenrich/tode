as yet unclassified
gitmergetoolX: gitRepoDirectory mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock windowLabel: label
  | dictionary conflicts merger mergeTool |
  dictionary := self gitlsfiles: gitRepoDirectory.
  dictionary isEmpty
    ifTrue: [ ^ 'No conflicts' ].
  conflicts := OrderedCollection new.
  dictionary
    keysAndValuesDo: [ :path :stages | 
      | conflict |
      "stages at: 1 - common ancestor
       stages at: 2 - us
       stages at: 3 - them"
      ((stages at: 2) == nil and: [ (stages at: 3) == nil ])
        ifTrue: [ 
          "both deleted"
          conflict := TDGitConflict new
            baseDirectory: gitRepoDirectory;
            filePath: path;
            source: '';
            common: '';
            destination: '';
            yourself.
          conflicts add: conflict ]
        ifFalse: [ 
          gitRepoDirectory
            readOnlyFileNamed: path
            do: [ :fileStream | 
              | triplet |
              triplet := self parseSourceConflictsOn: fileStream.
              conflict := TDGitConflict new
                baseDirectory: gitRepoDirectory;
                filePath: path;
                source: (triplet at: 1);
                common: (triplet at: 2);
                destination: (triplet at: 3);
                yourself.
              conflicts add: conflict ] ] ].
  merger := TDGitMerger new
    conflicts: conflicts;
    gitTool: self;
    yourself.
  (TDMergeDiffBrowser new
    merger: merger
      mergerCompletionBlock: aMergerCompletionBlock
      mergerAbortBlock: aMergerAbortBlock;
    topez: topez;
    windowLabel: label;
    yourself) open