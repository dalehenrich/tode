as yet unclassified
initializeCmdKeyShortcuts
  "Initialize the (unshifted) command-key (or alt-key) shortcut table."

  "
	TodeDebuggerEditor initialize
	"

  | cmds |
  self initializeBasicCmdKeyShortcuts.
  cmds := #($i #'dbInto:' $j #'dbUp:' $k #'dbDown:' $o #'dbOver:' $t #'dbThru:').
  1 to: cmds size by: 2 do: [ :i | self cmdActions at: (cmds at: i) asciiValue + 1 put: (cmds at: i + 1) ]