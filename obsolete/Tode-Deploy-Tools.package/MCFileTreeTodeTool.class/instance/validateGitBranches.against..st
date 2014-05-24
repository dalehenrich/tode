as yet unclassified
validateGitBranches: gitBranchMap against: branchMap
  | gitBranches branches |
  gitBranches := gitBranchMap keys.
  branches := branchMap keys.
  gitBranches size == branches size
    ifFalse: [ self error: 'Branch mismatch' ].
  gitBranches
    do: [ :each | 
      (branches includes: each)
        ifFalse: [ self error: 'Branch mismatch' ] ]