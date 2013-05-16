as yet unclassified
mcancestors
  "mc ancestors <packageName> [<limit>]
      ancestors @<workingCopy-path> [<limit>]
  "

  | packageName limit workingCopy ancestors |
  packageName := tokens at: 2.
  tokens size >= 3
    ifTrue: [ limit := (tokens at: 3) asNumber ].
  workingCopy := self resolveWorkingCopyReference: packageName.
  ancestors := workingCopy ancestry allAncestors.
  limit ~~ nil
    ifTrue: [ ancestors := ancestors copyFrom: 1 to: (limit min: ancestors size) ].
  ancestors editUsing: (TDEditorSpec topez: topez).
  ^ ancestors