as yet unclassified
resolveDefaultGitRepoDirectory
  ^ (self topez lookup: 'gitRepo' ifAbsent: [ self topez lookup: '.' ])
    dotSelfObject