stash
open
    | window |
    tty := StashShellTranscriptStream stashShell: self.
    window := tty open.
    self stStyler view: window paneMorphs first.
    ^ tty