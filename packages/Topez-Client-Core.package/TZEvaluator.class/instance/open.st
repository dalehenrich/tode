stash
open
    | window |
    tty := StashShellTranscriptStream stashShell: self.
    window := tty openLabel: self label.
    self stStyler view: window paneMorphs first.
    ^ tty