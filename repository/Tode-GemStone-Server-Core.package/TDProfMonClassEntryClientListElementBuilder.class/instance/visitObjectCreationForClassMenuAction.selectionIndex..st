menu actions
visitObjectCreationForClassMenuAction: listElement selectionIndex: selectionIndex
  | classes classNames className cls classEntry |
  classes := self object classInstancesCreated.
  classNames := (classes collect: [ :each | each theNonMetaClass name asString ])
    asArray sorted.
  className := (GsChoiceInteraction
    prompt: 'Choose a class'
    labels: classNames
    values: classNames) signal.
  className == nil
    ifTrue: [ ^ false ].
  cls := (Smalltalk at: className asSymbol) class.
  classEntry := TDProfMonitorClassEntry new
    tallyClass: cls;
    tally: (self object objCreationCounts at: cls);
    profMon: self object profMonitor;
    yourself.
  classEntry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'profMonResults')
        windowLabel: classEntry windowLabel;
        yourself).
  ^ true