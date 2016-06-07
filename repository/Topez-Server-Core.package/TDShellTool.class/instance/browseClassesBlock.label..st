browse
browseClassesBlock: classDefsBlock label: windowLabel
  | classDefs spec |
  classDefs := classDefsBlock value.
  classDefs isEmpty
    ifTrue: [ 
      self inform: 'No matching definitions found'.
      ^ classDefs ].
  spec := (TDEditorSpec topez: topez editorAspect: #'definitionList')
    windowLabel: windowLabel;
    yourself.
  self options
    at: 'staticList'
    ifPresent: [ :ignored | classDefs editUsing: spec ]
    ifAbsent: [ classDefs editUsing: spec objectBlock: classDefsBlock ].
  ^ classDefs