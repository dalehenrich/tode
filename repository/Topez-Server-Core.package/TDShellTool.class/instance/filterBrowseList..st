browse
filterBrowseList: list
  subOptions
    at: 'filter'
    ifPresent: [ :filterSpec | 
      | selectBlock |
      selectBlock := self resolveFilterSpec: filterSpec.
      ^ list select: selectBlock ].
  ^ list