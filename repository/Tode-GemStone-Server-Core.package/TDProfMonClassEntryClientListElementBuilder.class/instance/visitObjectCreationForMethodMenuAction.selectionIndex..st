menu actions
visitObjectCreationForMethodMenuAction: listElement selectionIndex: selectionIndex
  | classes classNames className cls classEntry methodEntry sampleDict |
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
  sampleDict := self object profMonitor profMonitor results at: 2.
  sampleDict
    keysAndValuesDo: [ :ar :d | 
      (ar at: 1) = cls
        ifTrue: [ 
          | entry |
          entry := d at: self object profMonEntry cmethod.
          methodEntry := TDProfMonitorObjectCreationEntry new
            profMonEntry: entry values any;
            profMon: classEntry;
            yourself.
          methodEntry
            editUsing:
              ((TDEditorSpec topez: listElement topez editorAspect: #'profMonResults')
                windowLabel: methodEntry windowLabel;
                yourself).
          ^ true ] ].
  ^ false