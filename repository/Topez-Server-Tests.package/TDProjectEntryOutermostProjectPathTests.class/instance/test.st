tests
test
  | result |
  result := {(TDProjectEntryOutermostProjectPath signal).
  ([ TDProjectEntryOutermostProjectPath signal ]
    on: TDProjectEntryOutermostProjectPath
    do: [ :ex | 
      | theProjectPath |
      "outerMost nonNil projectPath is the winner"
      theProjectPath := 1.
      ex outer
        ifNotNil: [ :outerProjectPath | theProjectPath := outerProjectPath ].
      ex resume: theProjectPath ]).
  ([ 
  [ TDProjectEntryOutermostProjectPath signal ]
    on: TDProjectEntryOutermostProjectPath
    do: [ :ex | 
      | theProjectPath |
      "outerMost nonNil projectPath is the winner"
      theProjectPath := 1.
      ex outer
        ifNotNil: [ :outerProjectPath | theProjectPath := outerProjectPath ].
      ex resume: theProjectPath ] ]
    on: TDProjectEntryOutermostProjectPath
    do: [ :ex | 
      | theProjectPath |
      "outerMost nonNil projectPath is the winner"
      theProjectPath := 2.
      ex outer
        ifNotNil: [ :outerProjectPath | theProjectPath := outerProjectPath ].
      ex resume: theProjectPath ])}.
  self
    assert:
      result
        =
          {nil.
          1.
          2}