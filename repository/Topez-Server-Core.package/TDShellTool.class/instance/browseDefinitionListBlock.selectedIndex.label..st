browse
browseDefinitionListBlock: definitionsBlock selectedIndex: selectedIndex label: label
  | definitions spec |
  definitions := definitionsBlock value.
  definitions selectedIndex: selectedIndex.
  spec := (TDEditorSpec topez: topez editorAspect: #'definitionList')
    windowLabel: label;
    yourself.
  self options
    at: 'staticList'
    ifPresent: [ :ignored | definitions editUsing: spec ]
    ifAbsent: [ definitions editUsing: spec objectBlock: definitionsBlock ].
  ^ definitions