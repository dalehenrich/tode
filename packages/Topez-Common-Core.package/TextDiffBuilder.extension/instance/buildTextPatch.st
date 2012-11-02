*topez-common-core
buildTextPatch
    ^ String streamContents: [ :stream | self printTextPatchSequence: self buildPatchSequence on: stream ]