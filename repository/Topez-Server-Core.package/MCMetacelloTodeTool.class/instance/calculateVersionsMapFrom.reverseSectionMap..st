as yet unclassified
calculateVersionsMapFrom: changed reverseSectionMap: reverseSectionMap
  | newVersionsMap |
  newVersionsMap := Dictionary new.
  changed
    do: [ :resolved | 
      | sectionList set |
      sectionList := reverseSectionMap
        at: (resolved metacelloPackageNameWithBranch at: 2).
      sectionList
        do: [ :section | 
          set := newVersionsMap
            at: section
            ifAbsent: [ newVersionsMap at: section put: Set new ].
          set add: resolved ] ].
  ^ newVersionsMap