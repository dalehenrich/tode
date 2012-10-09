stash
open
    evaluatorWindow := (StashShellTranscriptStream stashShell: self) openLabel: self label.
    self stStyler view: evaluatorWindow paneMorphs first.
    ^ evaluatorWindow