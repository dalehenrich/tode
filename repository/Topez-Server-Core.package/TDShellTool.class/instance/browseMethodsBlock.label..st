browse
browseMethodsBlock: methodDefinitionBlock label: windowLabel
  | methodDefinitions spec |
  methodDefinitions := methodDefinitionBlock value.
  methodDefinitions isEmpty
    ifTrue: [ 
      self inform: 'No matching definitions found'.
      ^ methodDefinitions ].
  spec := (TDEditorSpec topez: topez editorAspect: #'methodDefinitionList')
    windowLocation: #'implementors';
    windowLabel: windowLabel;
    yourself.
  self options
    at: 'staticList'
    ifPresent: [ :ignored | methodDefinitions editUsing: spec ]
    ifAbsent: [ methodDefinitions editUsing: spec objectBlock: methodDefinitionBlock ].
  ^ methodDefinitions