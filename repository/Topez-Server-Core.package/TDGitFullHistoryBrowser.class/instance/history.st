accessing
history
  history
    ifNil: [ history := (self parseRawOneLineCommitLog: self rawLogBlock value) asArray ].
  ^ history