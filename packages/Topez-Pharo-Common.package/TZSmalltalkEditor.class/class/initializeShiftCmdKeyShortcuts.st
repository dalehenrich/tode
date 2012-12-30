class initialization
initializeShiftCmdKeyShortcuts
  | cmds |
  super initializeShiftCmdKeyShortcuts.
  cmds := #($b #'selectSourceClass:' $e #'methodSourceContainingIt:').
  1 to: cmds size by: 2 do: [ :i | 
    shiftCmdActions at: (cmds at: i) asciiValue + 1 put: (cmds at: i + 1).	"plain keys"
    shiftCmdActions at: (cmds at: i) asciiValue - 32 + 1 put: (cmds at: i + 1).	"shifted keys"
    shiftCmdActions at: (cmds at: i) asciiValue - 96 + 1 put: (cmds at: i + 1)	"ctrl keys" ]