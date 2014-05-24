source element builder
elementSource
  | s |
  s := self contents.
  s ifNil: [ ^ '' ].
  ^ s