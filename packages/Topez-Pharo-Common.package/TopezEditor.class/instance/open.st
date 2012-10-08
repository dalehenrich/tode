initialization
open
    | window listPane codePane |
    label := ''.
    window := TZSystemWindow new model: self.
    listPane := self listEditor buildListMorph.
    listPane addDependent: self.
    window addListMorph: listPane frame: (0 @ 0 corner: 1 @ 1).
    listPane delete.
    codePane := self codeEditor buildTextMorph.
    codePane addDependent: self.
    window addCodeMorph: codePane frame: (0 @ 0 corner: 1 @ 1).
    codePane delete.
    window openInWorld.
    ^ window