as yet unclassified
assert: commandLine shouldParse: shouldParse into: expectedCommands
  | parsed count |
  parsed := false.
  count := 1.
  TDCommandLine
    fromStream: commandLine readStream
    forEachCommand: [ :command | 
      | tokens expectedTokens expectedCommand |
      parsed := true.
      tokens := command tokens.
      expectedCommand := expectedCommands at: count.
      count := count + 1.
      expectedTokens := expectedCommand tokens.
      self assert: tokens size = expectedTokens size.
      1 to: tokens size do: [ :index | self assert: (tokens at: index) = (expectedTokens at: index) ].
      self assert: command redirectTarget = expectedCommand redirectTarget ].
  self assert: expectedCommands size = (count - 1).
  self assert: parsed == shouldParse