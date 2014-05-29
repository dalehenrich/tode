as yet unclassified
gitmergetool: gitRepoDirectory mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  | dictionary conflicts merger mergeTool |
  dictionary := self gitlsfiles: gitRepoDirectory.
  dictionary isEmpty
    ifTrue: [ ^ 'No conflicts' ].
  conflicts := OrderedCollection new.
  dictionary keys
    do: [ :path | 
      gitRepoDirectory
        readOnlyFileNamed: path
        do: [ :fileStream | 
          | triplet conflict |
          triplet := self parseSourceConflictsOn: fileStream.
          conflict := TDGitConflict new
            baseDirectory: gitRepoDirectory;
            filePath: path;
            local: (triplet at: 1);
            common: (triplet at: 2);
            remote: (triplet at: 3);
            yourself.
          conflicts add: conflict ] ].
  merger := TDGitMerger new
    conflicts: conflicts;
    gitTool: self;
    yourself.
  (TDMergeDiffBrowser new
    merger: merger
      mergerCompletionBlock: aMergerCompletionBlock
      mergerAbortBlock: aMergerAbortBlock;
    topez: topez;
    windowLabel: 'Merge ' , gitRepoDirectory fullName;
    yourself) open