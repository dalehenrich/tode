as yet unclassified
mmget
  "mm get [image|new|registry] <config> [<config> ... ]"

  | aspect offset configurations ans |
  offset := 0.
  aspect := self getAspectGiven: (tokens at: 2).
  aspect = (tokens at: 2)
    ifTrue: [ offset := 1 ].
  aspect == #'image'
    ifTrue: [ 
      configurations := (tokens copyFrom: 2 + offset to: tokens size)
        collect: [ :configName | 
          | registration |
          registration := self getRegistrationFor: configName.
          registration lookupBaselineSpec ] ]
    ifFalse: [ self halt ].
  ans := Array new.
  configurations
    do: [ :projectSpec | 
      | engine |
      engine := MetacelloScriptEngine new
        projectSpec: projectSpec;
        yourself.
      ans add: engine get ].
  ^ ans