browse
browseClassesBlock: classDefsBlock label: windowLabel
  | classDefs spec |
  classDefs := classDefsBlock value.
  spec := (TDEditorSpec topez: topez editorAspect: #'definitionList')
    windowLabel: windowLabel;
    yourself.
  options
    at: 'staticList'
    ifPresent: [ :ignored | classDefs editUsing: spec ]
    ifAbsent: [ classDefs editUsing: spec objectBlock: classDefsBlock ].
  ^ classDefs