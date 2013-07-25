as yet unclassified
commitWorkingCopies: workingCopies repos: targetRepos commitMessage: commitMessage
  | committedPackages |
  committedPackages := OrderedCollection new.
  workingCopies
    do: [ :wc | 
      | versions |
      versions := self
        commitWorkingCopy: wc
        repos: targetRepos
        commitMessage: commitMessage.
      committedPackages add: wc packageName.
      versions
        do: [ :version | 
          Transcript
            cr;
            show: 'Committed: ' , version printString ] ].
  ^ committedPackages