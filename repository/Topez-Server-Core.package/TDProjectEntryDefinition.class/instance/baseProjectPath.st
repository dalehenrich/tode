accessing
baseProjectPath
  baseProjectPath ifNil: [ ^ self projectPath ].
  ^ baseProjectPath