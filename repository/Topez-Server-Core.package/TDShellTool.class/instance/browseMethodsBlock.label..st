browse
browseMethodsBlock: methodDefinitionBlock label: windowLabel
  | methodDefinitions spec |
  methodDefinitions := methodDefinitionBlock value.
  spec := (TDEditorSpec topez: topez editorAspect: #'methodDefinitionList')
    windowLocation: #'implementors';
    windowLabel: windowLabel;
    yourself.
  options
    at: 'staticList'
    ifPresent: [ :ignored | methodDefinitions editUsing: spec ]
    ifAbsent: [ methodDefinitions editUsing: spec objectBlock: methodDefinitionBlock ].
  ^ methodDefinitions