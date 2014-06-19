keyboard shortcut tables
initializeCmdKeyShortcuts
	"Initialize the (unshifted) command-key (or alt-key) shortcut table."

	"NOTE: if you don't know what your keyboard generates, use Sensor kbdTest"

	"self initialize"

	| cmds |
	self initializeBasicCmdKeyShortcuts.
	cmds := #($b #browseIt: $z #undo:  $m #implementorsOfIt: $n #sendersOfIt:).
	1 to: cmds size by: 2 do: [ :i | cmdActions at: (cmds at: i) asciiValue + 1 put: (cmds at: i + 1) ]