project list
templateProjectEntryLoads: aTemplateProjectEntryOrNil projectSpec: aProjectSpec
  | loads |
  loads := aProjectSpec loads copy.
  loads ifNil: [ loads := {} ].
  aTemplateProjectEntryOrNil
    ifNotNil: [ 
      loads addAll: aTemplateProjectEntryOrNil loads.
      loads := loads asSet asArray ].
  ^ loads