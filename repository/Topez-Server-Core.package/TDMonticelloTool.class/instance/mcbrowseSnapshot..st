as yet unclassified
mcbrowseSnapshot: snapshot
  | mcDefinitions definitions |
  mcDefinitions := snapshot definitions
    select: [ :def | def isOrganizationDefinition not ].
  definitions := mcDefinitions collect: [ :def | def asTDDefinition ].
  definitions
    editUsing:
      (TDEditorSpec topez: self topez editorAspect: #'externalDefinitionList').
  ^ definitions