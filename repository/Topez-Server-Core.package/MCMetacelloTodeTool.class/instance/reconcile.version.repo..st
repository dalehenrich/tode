as yet unclassified
reconcile: configurationClass version: versionString repo: repo
  | sectionMap reverseSectionMap oldVersionMap newVersionMap monticelloTool resolvedReferenceMap resolvedReferences oldVersions newVersions configReferences added removed changed newVersionsMap filtered |
  sectionMap := self
    createSectionMapFor: configurationClass
    version: versionString.
  oldVersionMap := Dictionary new.
  reverseSectionMap := Dictionary new.
  self
    populateVersionMap: oldVersionMap
    reverseSectionMap: reverseSectionMap
    from: sectionMap
    repo: repo.
  monticelloTool := self topez toolInstanceFor: 'mr'.
  resolvedReferenceMap := monticelloTool resolvedReferencesForRepository: repo.
  resolvedReferences := Set new.
  configReferences := oldVersionMap values.
  resolvedReferenceMap values
    do: [ :resolved | resolvedReferences addAll: resolved ].
  oldVersions := configReferences difference: resolvedReferences.
  newVersions := resolvedReferences difference: configReferences.
  newVersionMap := Dictionary new.
  configReferences
    do: [ :resolved | newVersionMap at: (resolved metacelloPackageNameWithBranch at: 2) put: resolved ].
  added := self calculateAddedFrom: newVersions versionMap: oldVersionMap.
  removed := self calculateRemovedFrom: oldVersions versionMap: newVersionMap.
  changed := newVersions copy.
  changed removeAllFoundIn: added.
  filtered := added
    reject: [ :resolved | 
      (resolved name beginsWith: 'BaselineOf')
        or: [ resolved name beginsWith: 'Metacello-Cypress' ] ].
  filtered isEmpty
    ifFalse: [ filtered asArray error: 'Added packages' ].
  removed isEmpty
    ifFalse: [ removed asArray error: 'Removed packages' ].
  newVersionsMap := self
    calculateVersionsMapFrom: changed
    reverseSectionMap: reverseSectionMap.
  self
    modifyConfiguration: configurationClass
    version: versionString
    newVersionsMap: newVersionsMap.
  false
    ifTrue: [ 
      "debugging help"
      ^ Dictionary new
        at: 'configReferences' put: configReferences asArray;
        at: 'oldVersionMap' put: oldVersionMap;
        at: 'oldVersions' put: oldVersions asArray;
        at: 'newVersions' put: newVersions asArray;
        at: 'newVersionMap' put: newVersionMap;
        at: 'resolvedReferences' put: resolvedReferences asArray;
        at: 'added' put: added asArray;
        at: 'removed' put: removed asArray;
        at: 'changed' put: changed asArray;
        at: 'newVersionsMap' put: newVersionsMap;
        yourself ].
  ^ changed asArray