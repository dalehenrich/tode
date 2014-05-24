project
projectdiff
  "
  project diff  [--all] <project-name>
"

  | projectName registration workingCopies stream patches |
  self getSubcommandOptsMixedLongShort: {#('all' nil #'none')}.
  projectName := subArguments at: 1.
  registration := self projectRegistrationFor: projectName.
  workingCopies := registration workingCopies.
  subOptions
    at: 'all'
    ifAbsent: [ workingCopies := workingCopies select: [ :wc | wc modified ] ].
  stream := TextStream on: Text new.
  stream
    nextPutAll:
        ('____________________ ' , projectName , ' ____________________') asText allBold;
    cr.
  patches := self diffForWorkingCopies: workingCopies on: stream.
  patches isEmpty
    ifTrue: [ ^ 'No dirty packages' asText allBold ].
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself).
  ^ patches