testing
hasFailures
  ^ unexpectedFailures size > 0 or: [ unexpectedPasses size > 0 ]