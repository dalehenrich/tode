initialization
open
  | window listPane codePane roassalPane |
  label := ''.
  updating := false.
  window := TZSystemWindow new model: self.
  listPane := self listEditor buildListMorph.
  window addMorph: listPane frame: (0 @ 0 corner: 1 @ 1).
  listPane delete.
  codePane := self codeEditor buildTextMorph.
  window addMorph: codePane frame: (0 @ 0 corner: 1 @ 1).
  codePane delete.
  roassalPane := self roassalEditor buildRoassalMorph.
  roassalPane delete.
  window addMorph: codePane frame: (0 @ 0 corner: 1 @ 1).
  window openInWorld.
  ^ window