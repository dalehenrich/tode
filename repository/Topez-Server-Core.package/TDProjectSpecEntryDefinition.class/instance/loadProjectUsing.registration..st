actions
loadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads result |
  self preLoadScript isEmpty
    ifFalse: [ aProjectTool topez evaluateCommandString: self preLoadScript ].
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := {'default'} ].
  self loads
    ifNotNil: [ :entryLoads | 
      entryLoads isArray
        ifTrue: [ loads := loads , entryLoads ]
        ifFalse: [ loads := loads , {entryLoads} ] ].
  result := self
    basicLoadProjectUsing: aProjectTool
    registration: aProjectRegistration.
  self postLoadScript isEmpty
    ifFalse: [ aProjectTool topez evaluateCommandString: self postLoadScript ].
  ^ result