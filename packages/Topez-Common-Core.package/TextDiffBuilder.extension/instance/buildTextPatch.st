*topez-common-core
buildTextPatch
  ^ Text
    streamContents: [ :stream | self printTextPatchSequence: self buildPatchSequence on: stream ]