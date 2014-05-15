accessing
versionString
  ^ self projectSpec versionString ifNil: [ ^ '' ]