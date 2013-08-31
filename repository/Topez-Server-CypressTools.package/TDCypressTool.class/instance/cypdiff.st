as yet unclassified
cypdiff
  "cyp diff <pkg-name> @<repo-path>"

  | packageName cypressRepository stream patch |
  packageName := tokens at: 2.
  cypressRepository := self resolveAtPathReference: (tokens at: 3).
  stream := TextStream on: Text new.
  patch := self cypDiffPackage: packageName to: cypressRepository on: stream.
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patch