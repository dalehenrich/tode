as yet unclassified
populateVersionMap: oldVersionMap reverseSectionMap: reverseSectionMap from: sectionMap repo: repo
  sectionMap
    keysAndValuesDo: [ :section :versions | 
      versions
        do: [ :version | 
          | pName |
          pName := version metacelloPackageNameWithBranch at: 2.
          oldVersionMap
            at: pName
            put: (GoferResolvedReference name: version name repository: repo).
          (reverseSectionMap
            at: pName
            ifAbsent: [ reverseSectionMap at: pName put: Set new ]) add: section ] ]