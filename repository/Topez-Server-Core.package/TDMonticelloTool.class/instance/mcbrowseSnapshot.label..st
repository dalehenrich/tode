as yet unclassified
mcbrowseSnapshot: snapshot label: label
  | mcDefinitions definitions |
  mcDefinitions := snapshot definitions
    select: [ :def | def isOrganizationDefinition not ].
  definitions := mcDefinitions collect: [ :def | def asTDDefinition ].
  definitions
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'externalDefinitionList')
        windowLabel: label;
        yourself).
  ^ definitions