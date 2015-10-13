parsing
line: cmdLineString forEachCommand: aBlock
  "single command line"

  (self isolate: cmdLineString)
    do: [ :isolated | 
      | redirected commandLine redirectTarget command |
      redirected := self scan: isolated delim: $>.
      commandLine := redirected at: 1.
      redirectTarget := redirected size > 1
        ifTrue: [ (redirected at: 2) trimBoth ].
      command := self commandLine: commandLine redirectTarget: redirectTarget.
      aBlock value: command ]