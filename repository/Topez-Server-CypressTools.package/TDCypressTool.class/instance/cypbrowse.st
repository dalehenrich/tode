as yet unclassified
cypbrowse
  "
  cyp browse <package-name> <repository-spec>
      browse <package-name> @<repository-path>
      browse <package-name>
	"

  | packageName snapshot cypressDefinitions definitions |
  packageName := tokens at: 2.
  tokens size > 2
    ifTrue: [ 
      | cypressRepository packageStructure |
      cypressRepository := self resolveAtPathReference: (tokens at: 3).
      packageStructure := cypressRepository
        readPackageStructureForPackageNamed: packageName.
      snapshot := packageStructure snapshot ]
    ifFalse: [ 
      | package |
      package := CypressPackageDefinition named: packageName.
      snapshot := package snapshot ].
  cypressDefinitions := snapshot definitions.
  definitions := cypressDefinitions collect: [ :def | def asTDDefinition ].
  definitions
    editUsing: (TDEditorSpec topez: self topez editorAspect: #'definitionList').
  ^ definitions