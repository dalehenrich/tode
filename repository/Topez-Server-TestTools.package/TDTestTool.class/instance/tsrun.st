as yet unclassified
tsrun
  "ts run [errors|failures| passed|expectedDefects|unexpectedPassed]
      run <test-spec>
      run @<method-path>
  "

  | arg |
  arg := tokens at: 2.
  ^ self tsrun: arg