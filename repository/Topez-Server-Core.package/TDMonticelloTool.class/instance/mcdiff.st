as yet unclassified
mcdiff
  "mc diff <regex-pkg-pattern>
      diff @<workingCopy-path>
  "

  | pattern stream workingCopyList patches |
  pattern := tokens at: 2.
  workingCopyList := (pattern beginsWith: '@')
    ifTrue: [ 
      | wcOrCollection |
      wcOrCollection := self resolveAtPathReference: pattern.
      wcOrCollection isCollection
        ifFalse: [ wcOrCollection := {wcOrCollection} ].
      wcOrCollection ]
    ifFalse: [ self findMatchingPackages: pattern topez: topez ].
  stream := TextStream on: Text new.
  patches := OrderedCollection new.
  workingCopyList
    do: [ :workingCopy | 
      | patch |
      patch := self mmDiffForWorkingCopy: workingCopy on: stream.
      patch isEmpty
        ifFalse: [ 
          stream cr.
          patches
            add:
              {workingCopy.
              patch} ] ].
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patches