as yet unclassified
cymdiff
  "cym diff <config> @<cypress-repo>"

  | configName cypressRepository registration projectSpec stream patches |
  configName := tokens at: 2.
  cypressRepository := self resolveAtPathReference: (tokens at: 3).
  registration := self getRegistrationFor: configName.
  projectSpec := registration lookupBaselineSpec.
  stream := TextStream on: Text new.
  patches := self cymDiffProject: projectSpec to: cypressRepository on: stream.
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patches