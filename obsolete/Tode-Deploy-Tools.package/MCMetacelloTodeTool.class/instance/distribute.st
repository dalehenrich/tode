as yet unclassified
distribute
  "distribute <configuration> <source-repository> <repository-list>"

  | baseName monticelloTool sourceRepo repoList wc versionName |
  baseName := tokens at: 2.
  sourceRepo := tokens at: 3.
  repoList := tokens copyFrom: 4 to: tokens size.
  monticelloTool := self topez toolInstanceFor: 'mc'.
  wc := monticelloTool mcversion: 'ConfigurationOf' , baseName.
  versionName := wc ancestry ancestors first name.
  monticelloTool mccopy: versionName from: sourceRepo to: repoList