initialization
openLabel: labelString
    | window pane |
    label := labelString.
    window := (TZSystemWindow labelled: labelString) model: self.
    pane := self buildListMorph.
    window addListMorph: pane frame: (0 @ 0 corner: 1 @ 1).
    window openInWorld.
    ^ window