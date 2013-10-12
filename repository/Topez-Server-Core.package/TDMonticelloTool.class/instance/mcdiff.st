as yet unclassified
mcdiff
  "mc diff <package-name>
      diff @<workingCopy-path>
      diff
  "

  | packageName stream workingCopyList patches |
  tokens size = 1
    ifTrue: [ workingCopyList := MCWorkingCopy allManagers select: [ :wc | wc modified ] ]
    ifFalse: [ 
      packageName := tokens at: 2.
      workingCopyList := (packageName beginsWith: '@')
        ifTrue: [ 
          | wcOrCollection |
          wcOrCollection := self resolveAtPathReference: packageName.
          wcOrCollection isCollection
            ifFalse: [ wcOrCollection := {wcOrCollection} ].
          wcOrCollection ]
        ifFalse: [ 
          workingCopyList := MCWorkingCopy allManagers
            select: [ :wc | wc packageName = packageName ] ] ].
  stream := TextStream on: Text new.
  patches := OrderedCollection new.
  workingCopyList
    do: [ :workingCopy | 
      | patch |
      patch := self mmDiffForWorkingCopy: workingCopy on: stream.
      patch isEmpty
        ifTrue: [ workingCopy modified: false ]
        ifFalse: [ 
          stream cr.
          patches
            add:
              {workingCopy.
              patch} ] ].
  stream contents
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself).
  ^ patches